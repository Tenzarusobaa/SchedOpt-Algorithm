import mysql.connector
from mysql.connector import Error

def truncate_table(cursor):
    try:
        cursor.execute("DELETE FROM tbl_room_day_time_assignment")
        print("Table emptied successfully")
    except Error as e:
        print(f"Error truncating table: {e}")

def generate_assignments(cursor):
    try:
        # Get all rooms with their basic information including department and program owners
        cursor.execute("""
            SELECT rd_room_code, rd_type, rd_function, rd_capacity, 
                   rd_department_owner, rd_program_owner 
            FROM tbl_room_data
        """)
        rooms = cursor.fetchall()
        
        # Get all days (assuming tbl_day_slot exists) with their types
        cursor.execute("SELECT ds_abbr, ds_day_type FROM tbl_day_slot")
        days = cursor.fetchall()  # Now each day is a tuple (abbr, type)
        
        # Get all time slots
        cursor.execute("SELECT ts_start_time, ts_end_time, ts_duration FROM tbl_time_slot")
        time_slots = cursor.fetchall()
        
        # Prepare insert statement (updated to include all fields)
        insert_query = """
        INSERT INTO tbl_room_day_time_assignment 
        (rdta_room_code, rdta_room_type, rdta_room_function, rdta_room_capacity,
         rdta_day_abbr, rdta_start_time, rdta_end_time, rdta_ts_duration, 
         rdta_day_type, rdta_room_department_owner, rdta_room_program_owner)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """
        
        # Generate and insert all combinations
        count = 0
        for room in rooms:
            room_code, room_type, room_function, room_capacity, dept_owner, prog_owner = room
            for day_abbr, day_type in days:
                for ts_start, ts_end, ts_duration in time_slots:
                    data = (
                        room_code,
                        room_type,
                        room_function,
                        room_capacity,
                        day_abbr,
                        ts_start,
                        ts_end,
                        ts_duration,
                        day_type,
                        dept_owner,
                        prog_owner
                    )
                    cursor.execute(insert_query, data)
                    count += 1
        
        print(f"Inserted {count} assignments")
        
    except Error as e:
        print(f"Error generating assignments: {e}")

def main():
    try:
        # Connect to the database
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',
            database='schedopt_db'
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            
            # Truncate the table first
            truncate_table(cursor)
            
            # Generate and insert all assignments
            generate_assignments(cursor)
            
            # Commit changes
            connection.commit()
            print("All assignments inserted successfully")
            
    except Error as e:
        print(f"Error: {e}")
        if 'connection' in locals() and connection.is_connected():
            connection.rollback()
    finally:
        if 'connection' in locals() and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

if __name__ == "__main__":
    main()