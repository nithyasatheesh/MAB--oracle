## Hands -on-Sol - DDL ##

# Create and Modify a Department Table

-- Create a table named DEPARTMENT
-- Add columns: dept_id, dept_name, location
-- Modify the table by adding a new column head_of_department
-- Rename the column location to office_location


-- Step 1: Create the DEPARTMENT Table
CREATE TABLE DEPARTMENT (
    dept_id NUMBER,
    dept_name VARCHAR2(100),
    location VARCHAR2(100)
);

-- Step 2: Add a New Column to Store the Department Head
ALTER TABLE DEPARTMENT ADD (head_of_department VARCHAR2(100));

-- Step 3: Rename the "location" Column to "office_location"
ALTER TABLE DEPARTMENT RENAME COLUMN location TO office_location;

-- Step 4: Verify the Changes
DESC DEPARTMENT;


## Problem 2: Create and Modify an Employee Table

# Create a table named EMPLOYEE
# Add columns: emp_id, name, salary, department
# Modify the table by changing the data type of salary
# Drop the department column


-- Step 1: Create the EMPLOYEE Table
CREATE TABLE EMPLOYEE (
    emp_id NUMBER,
    name VARCHAR2(100),
    salary NUMBER,
    department VARCHAR2(100)
);

-- Step 2: Change the Data Type of "salary" to DECIMAL(10,2)
ALTER TABLE EMPLOYEE MODIFY salary DECIMAL(10,2);

-- Step 3: Drop the "department" Column
ALTER TABLE EMPLOYEE DROP COLUMN department;

-- Step 4: Verify the Changes
DESC EMPLOYEE;



## Problem 3:  Drop and Recreate a Table

# Drop the PROJECT table if it exists.
# Recreate the PROJECT table with three columns: project_id, project_name, start_date.

-- Step 1: Drop the PROJECT Table if it Exists
DROP TABLE PROJECT;

-- Step 2: Recreate the PROJECT Table
CREATE TABLE PROJECT (
    project_id NUMBER,
    project_name VARCHAR2(200),
    start_date DATE
);

-- Step 3: Verify the Table Exists
DESC PROJECT;
