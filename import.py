import mysql.connector
import pandas as pd
from openpyxl import load_workbook

# Database configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '', 
    'database': 'schedopt_db'
}

def clean_data(df):
    """Clean the dataframe by removing empty rows and handling missing values"""
    # Remove rows where all values are NaN
    df = df.dropna(how='all')
    
    # Fill NaN values with empty string
    df = df.fillna('')
    
    # Convert numeric columns to appropriate types
    if 'Year' in df.columns:
        df['Year'] = df['Year'].astype(str)
    if 'Units' in df.columns:
        df['Units'] = df['Units'].astype(str)
    if 'Semester' in df.columns:
        df['Semester'] = df['Semester'].astype(str)
    
    return df

def insert_prospectus_data(df):
    """Insert the prospectus data into the database"""
    try:
        # Connect to the database
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        
        # Prepare the insert statement
        insert_query = """
        INSERT INTO tbl_prospectus_list 
        (pl_program, pl_department, pl_year, pl_course_code, pl_course_title, pl_units, pl_semester, pl_type) 
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        
        # Convert dataframe to list of tuples
        data = df[['Program', 'Department', 'Year', 'Course Code', 'Course Title', 
                  'Units', 'Semester', 'Type']].values.tolist()
        
        # Execute the insert statement for each row
        cursor.executemany(insert_query, data)
        
        # Commit the transaction
        conn.commit()
        
        print(f"Successfully inserted {len(data)} records into the database.")
        
    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()

def process_excel_file(file_path):
    """Process the Excel file and extract the prospectus data"""
    # Load the Excel file
    wb = load_workbook(filename=file_path)
    sheet = wb['Cleaned Sheet']  # Assuming the sheet name is 'SLA'
    
    # Convert sheet to dataframe
    data = sheet.values
    columns = next(data)
    df = pd.DataFrame(data, columns=columns)
    
    # Clean the data
    df = clean_data(df)
    
    # Filter out empty rows (where Program is empty)
    df = df[df['Program'] != '']
    
    return df

if __name__ == "__main__":
    excel_file_path = "Prospectus List.xlsx"
    
    try:
        # Process the Excel file
        prospectus_df = process_excel_file(excel_file_path)
        
        # Insert data into the database
        insert_prospectus_data(prospectus_df)
        
    except Exception as e:
        print(f"An error occurred: {e}")