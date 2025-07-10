import mysql.connector
from mysql.connector import Error
from collections import defaultdict

class CourseScheduler:
    def __init__(self, db_config):
        self.db_config = db_config
        self.connection = None
        self.cursor = None
        self.assigned_sections = set()
        self.room_assignments = defaultdict(set) 
        self.section_assignments = set()  
        
    def connect(self):
        """Establish database connection"""
        try:
            self.connection = mysql.connector.connect(**self.db_config)
            self.cursor = self.connection.cursor(dictionary=True)
            print("Database connection established")
        except Error as e:
            print(f"Error connecting to MySQL: {e}")
    
    def disconnect(self):
        """Close database connection"""
        if self.connection and self.connection.is_connected():
            self.cursor.close()
            self.connection.close()
            print("Database connection closed")
    
    def clear_existing_assignments(self):
        """Clear existing assignments from final_assignment table"""
        try:
            self.cursor.execute("TRUNCATE TABLE tbl_final_assignment")
            self.connection.commit()
            print("Cleared existing assignments")
        except Error as e:
            print(f"Error clearing assignments: {e}")
    
    def get_course_sections(self):
        """Retrieve all course sections that need scheduling"""
        try:
            query = """
                SELECT cs_course_section, cs_program_section, cs_student_count, 
                       cs_department, cs_course_type, cs_units, cs_course_year
                FROM tbl_course_section
                ORDER BY 
                    CASE 
                        WHEN cs_course_type = 'PATHFIT' THEN 1  -- Schedule PATHFIT first as they have more specific requirements
                        ELSE 2
                    END,
                    cs_student_count DESC
            """
            self.cursor.execute(query)
            return self.cursor.fetchall()
        except Error as e:
            print(f"Error fetching course sections: {e}")
            return []
    
    def get_available_rooms(self, course_type, student_count):
        """Retrieve available rooms based on course type requirements"""
        try:
            if course_type in ['NGEC', 'GEELECT', 'NSTP', 'CC']:
                # These all follow the same constraints as NGEC
                query = """
                    SELECT rdta_room_code, rdta_day_abbr, rdta_start_time, rdta_end_time, rdta_room_capacity,
                           rdta_day_type, rdta_room_type, rdta_room_function, rdta_ts_duration
                    FROM tbl_room_day_time_assignment
                    WHERE rdta_day_type = 'Pair' 
                      AND rdta_ts_duration = 80
                      AND rdta_room_type = 'LEC'
                      AND rdta_room_function = 'LEC'
                      AND (rdta_room_program_owner = 'NONE' OR rdta_room_program_owner IS NULL)
                      AND (rdta_room_department_owner = 'NONE' OR rdta_room_department_owner IS NULL)
                      AND rdta_room_capacity >= %s
                    ORDER BY rdta_room_capacity
                """
            elif course_type == 'PATHFIT':
                query = """
                    SELECT rdta_room_code, rdta_day_abbr, rdta_start_time, rdta_end_time, rdta_room_capacity,
                           rdta_day_type, rdta_room_type, rdta_room_function, rdta_ts_duration
                    FROM tbl_room_day_time_assignment
                    WHERE rdta_day_type = 'Single'
                      AND rdta_ts_duration = 120
                      AND rdta_room_code LIKE 'MPCC%'
                      AND rdta_room_type = 'GYM'
                      AND rdta_room_function = 'PATHFIT'
                      AND rdta_room_capacity >= %s
                    ORDER BY rdta_room_capacity
                """
            else:
                return []
            
            self.cursor.execute(query, (student_count,))
            return self.cursor.fetchall()
        except Error as e:
            print(f"Error fetching available rooms: {e}")
            return []
    
    def is_assignment_valid(self, room_code, day_abbr, start_time, end_time, course_section):
        """Check if the assignment doesn't conflict with existing assignments"""
        # Check if this room-day-time is already taken
        if (room_code, day_abbr, start_time, end_time) in self.room_assignments:
            return False
        
        # Check if this section is already scheduled
        if course_section in self.section_assignments:
            return False
        
        return True
    
    def assign_section(self, section, room):
        """Assign a section to a room-day-time slot"""
        try:
            # Check if assignment is valid
            if not self.is_assignment_valid(
                room['rdta_room_code'], 
                room['rdta_day_abbr'], 
                room['rdta_start_time'], 
                room['rdta_end_time'], 
                section['cs_course_section']
            ):
                return False
            
            # Insert the assignment
            insert_query = """
                INSERT INTO tbl_final_assignment 
                (fa_course_section, fa_program_section, fa_student_count, 
                 fa_department, fa_room_code, fa_day_abbr, fa_start_time, fa_end_time)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            """
            values = (
                section['cs_course_section'],
                section['cs_program_section'],
                section['cs_student_count'],
                section['cs_department'],
                room['rdta_room_code'],
                room['rdta_day_abbr'],
                room['rdta_start_time'],
                room['rdta_end_time']
            )
            
            self.cursor.execute(insert_query, values)
            self.connection.commit()
            
            # Update tracking sets
            self.room_assignments[(room['rdta_room_code'], room['rdta_day_abbr'], room['rdta_start_time'], room['rdta_end_time'])].add(section['cs_course_section'])
            self.section_assignments.add(section['cs_course_section'])
            
            print(f"Assigned {section['cs_course_section']} ({section['cs_course_type']}) to {room['rdta_room_code']} on {room['rdta_day_abbr']} at {room['rdta_start_time']}-{room['rdta_end_time']}")
            return True
        except Error as e:
            print(f"Error assigning section: {e}")
            self.connection.rollback()
            return False
    
    def schedule_courses(self):
        """Main scheduling function"""
        self.connect()
        self.clear_existing_assignments()
        
        # Get all course sections that need scheduling
        course_sections = self.get_course_sections()
        
        if not course_sections:
            print("No course sections found to schedule")
            return
        
        # Schedule each course section
        for section in course_sections:
            # Get available rooms for this section type
            available_rooms = self.get_available_rooms(section['cs_course_type'], section['cs_student_count'])
            
            if not available_rooms:
                print(f"No available rooms found for {section['cs_course_section']} ({section['cs_course_type']})")
                continue
            
            # Try to assign to first available room
            assigned = False
            for room in available_rooms:
                if self.assign_section(section, room):
                    assigned = True
                    break
            
            if not assigned:
                print(f"Failed to assign {section['cs_course_section']} ({section['cs_course_type']}) - no valid slots available")
        
        self.disconnect()
        print("Scheduling completed")

# Database configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '', 
    'database': 'schedopt_db'
}

# Run the scheduler
scheduler = CourseScheduler(db_config)
scheduler.schedule_courses()