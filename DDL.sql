-- Task: Create an EMPLOYEES Table --

CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    SALARY NUMBER(10,2) CHECK (SALARY > 0),
    DEPARTMENT_ID INT
);

--  Verify Table Creation --
SELECT table_name FROM user_tables WHERE table_name = 'EMPLOYEE';

--Modifying a Table (ALTER TABLE) --
## Task: Add a Column for Email ##
ALTER TABLE EMPLOYEE ADD EMAIL VARCHAR2(100);

--  Task: Modify Salary Data Type
ALTER TABLE EMPLOYEE MODIFY SALARY NUMBER(12,2);

--Task: Drop a Column --
ALTER TABLE EMPLOYEE DROP COLUMN EMAIL;

-- Verify Changes--
DESC EMPLOYEE;   # display the structure of a table 


-- Deleting a Table (DROP TABLE)
## Task: Drop the EMPLOYEES Table ##

DROP TABLE EMPLOYEEs;

select * from Tab;

-- view tables from HR --

select * from Tab;

-- Display data from 'Countries' table --

select * from Countries;