
-- =========================================================
-- SQL TUTORIAL: ADDING CONSTRAINTS
-- File Name: add_constraints.sql
-- Purpose: Explain how to add constraints to SQL tables
-- =========================================================

-- Constraints are rules applied to table columns.
-- They help maintain data accuracy and integrity.

-- Types of SQL Constraints:
-- 1. PRIMARY KEY
-- 2. FOREIGN KEY
-- 3. UNIQUE
-- 4. NOT NULL
-- 5. CHECK
-- 6. DEFAULT


-- =========================================================
-- STEP 1: CREATE TABLES
-- =========================================================

CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    age INT,
    salary DECIMAL(10,2),
    department_id INT
);


-- =========================================================
-- STEP 2: ADD PRIMARY KEY CONSTRAINT
-- =========================================================

-- PRIMARY KEY:
-- Uniquely identifies each record in a table.
-- It does not allow NULL or duplicate values.

ALTER TABLE Employees
ADD CONSTRAINT pk_employees
PRIMARY KEY (employee_id);


-- =========================================================
-- STEP 3: ADD UNIQUE CONSTRAINT
-- =========================================================

-- UNIQUE:
-- Prevents duplicate values in a column.

ALTER TABLE Employees
ADD CONSTRAINT uq_employee_email
UNIQUE (email);


-- =========================================================
-- STEP 4: ADD FOREIGN KEY CONSTRAINT
-- =========================================================

-- FOREIGN KEY:
-- Connects two tables.
-- The department_id must exist in Departments.

ALTER TABLE Departments
ADD CONSTRAINT pk_departments
PRIMARY KEY (department_id);

ALTER TABLE Employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES Departments(department_id);


-- =========================================================
-- STEP 5: ADD CHECK CONSTRAINT
-- =========================================================

-- CHECK:
-- Ensures that values satisfy a condition.

ALTER TABLE Employees
ADD CONSTRAINT chk_employee_age
CHECK (age >= 18);

ALTER TABLE Employees
ADD CONSTRAINT chk_employee_salary
CHECK (salary > 0);


-- =========================================================
-- STEP 6: ADD DEFAULT CONSTRAINT
-- =========================================================

-- DEFAULT:
-- Provides a default value when no value is supplied.

ALTER TABLE Employees
ADD CONSTRAINT df_employee_salary
DEFAULT 10000 FOR salary;


-- =========================================================
-- STEP 7: ADD NOT NULL CONSTRAINT
-- =========================================================

-- NOT NULL:
-- Prevents a column from storing NULL values.
-- Existing records must contain values before applying it.

ALTER TABLE Employees
ALTER COLUMN employee_name SET NOT NULL;


-- =========================================================
-- STEP 8: VIEW TABLE STRUCTURE
-- =========================================================

-- MySQL:
-- DESCRIBE Employees;

-- SQL Server:
-- EXEC sp_help 'Employees';

-- PostgreSQL:
-- \d Employees;


-- =========================================================
-- STEP 9: DROP CONSTRAINT
-- =========================================================

-- Removes an existing constraint.

-- PRIMARY KEY / UNIQUE / FOREIGN KEY / CHECK:
-- ALTER TABLE Employees
-- DROP CONSTRAINT chk_employee_age;

-- MySQL NOT NULL:
-- ALTER TABLE Employees
-- MODIFY employee_name VARCHAR(100) NULL;


-- =========================================================
-- STEP 10: INSERT SAMPLE DATA
-- =========================================================

INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR');

INSERT INTO Employees
(employee_id, employee_name, email, age, salary, department_id)
VALUES
(101, 'Rahim', 'rahim@example.com', 25, 25000, 1),
(102, 'Karim', 'karim@example.com', 30, 35000, 2);


-- =========================================================
-- END OF SQL CONSTRAINT TUTORIAL
-- =========================================================

ALTER TABLE users ADD CONSTRAINT check_dob CHECK(date_of_birth > '1920-01-01');