-- create a database first 

CREATE DATABASE practiceMysql; --This create a database named practiceMysql
-- To use that we need to use that db
USE practiceMysql;


-- Create a table


-- ============================================
-- TABLE NAME: users
-- PURPOSE: Stores user information in the database.
-- ============================================

CREATE TABLE users (

    -- Unique ID for each user.
    -- AUTO_INCREMENT automatically generates the next ID.
    -- PRIMARY KEY ensures every ID is unique and not NULL.
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Stores the user's full name.
    -- VARCHAR(100) allows up to 100 characters.
    -- NOT NULL means this field cannot be empty.
    name VARCHAR(100) NOT NULL,

    -- Stores the user's email address.
    -- VARCHAR(100) allows up to 100 characters.
    -- UNIQUE prevents duplicate email addresses.
    -- NOT NULL means an email address is required.
    email VARCHAR(100) UNIQUE NOT NULL,

    -- Stores the user's gender.
    -- ENUM allows only the specified values:
    -- 'Male', 'Female', or 'Other'.
    gender ENUM('Male', 'Female', 'Other'),

    -- Stores the user's date of birth.
    -- DATE format: YYYY-MM-DD.
    -- This field can be NULL because NOT NULL is not specified.
    date_of_birth DATE,

    -- Stores the date and time when the user record is created.
    -- TIMESTAMP stores date and time information.
    -- DEFAULT CURRENT_TIMESTAMP automatically sets the
    -- current date and time when a new record is inserted.
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- ============================================
-- END OF USERS TABLE
-- ============================================


-- To select all  from a table

SELECT * FROM users;

-- For Drop a  DataBase the command is 

DROP DATABASE practiseMySql;


-- =====================================================
--              SQL DATA TYPES & CONSTRAINTS
-- =====================================================


-- -----------------------------------------------------
-- 1. DATA TYPES
-- -----------------------------------------------------
-- Data types define what kind of data a column can store.
-- Every column in a table must have a data type.


-- INTEGER DATA TYPES:
-- INT         : Stores whole numbers (e.g. 1, 100, 500).
-- BIGINT      : Stores large whole numbers.
-- SMALLINT    : Stores small whole numbers.
-- TINYINT     : Stores very small whole numbers.


-- STRING / TEXT DATA TYPES:
-- CHAR(n)     : Stores fixed-length characters.
--               Example: CHAR(10)
--
-- VARCHAR(n)  : Stores variable-length characters.
--               Example: VARCHAR(100)
--
-- TEXT        : Stores longer text data.


-- DATE & TIME DATA TYPES:
-- DATE        : Stores date (YYYY-MM-DD).
-- TIME        : Stores time (HH:MM:SS).
-- DATETIME    : Stores date and time.
-- TIMESTAMP   : Stores date and time, commonly used
--               for tracking record creation or updates.
-- YEAR        : Stores a year value.


-- DECIMAL / NUMERIC DATA TYPES:
-- DECIMAL(p,s): Stores exact decimal values.
--               Example: DECIMAL(10,2)
--
-- FLOAT       : Stores approximate decimal values.
-- DOUBLE      : Stores approximate decimal values
--               with greater precision than FLOAT.


-- BOOLEAN DATA TYPE:
-- BOOLEAN     : Represents TRUE or FALSE.
--               In MySQL, BOOLEAN is treated as TINYINT(1).


-- -----------------------------------------------------
-- 2. SQL CONSTRAINTS
-- -----------------------------------------------------
-- Constraints are rules applied to table columns.
-- They help maintain data accuracy, consistency,
-- and integrity in a database.


-- PRIMARY KEY:
-- Uniquely identifies each row in a table.
-- Cannot contain duplicate or NULL values.
-- Example: id INT PRIMARY KEY


-- FOREIGN KEY:
-- Creates a relationship between two tables.
-- References a PRIMARY KEY or UNIQUE key in another table.
-- Helps maintain referential integrity.
-- Example: FOREIGN KEY (user_id) REFERENCES users(id)


-- NOT NULL:
-- Prevents a column from storing NULL values.
-- A value must be provided.
-- Example: name VARCHAR(100) NOT NULL


-- UNIQUE:
-- Prevents duplicate values in a column or column combination.
-- Example: email VARCHAR(100) UNIQUE


-- DEFAULT:
-- Assigns a default value when no value is provided.
-- Example: status VARCHAR(20) DEFAULT 'Active'


-- AUTO_INCREMENT:
-- Automatically generates the next numeric value.
-- Commonly used with PRIMARY KEY.
-- Example: id INT AUTO_INCREMENT PRIMARY KEY


-- CHECK:
-- Ensures that values satisfy a specified condition.
-- Example: age INT CHECK (age >= 18)


-- ENUM:
-- Restricts a column to a predefined list of values.
-- Example: gender ENUM('Male', 'Female', 'Other')


-- -----------------------------------------------------
-- 3. QUICK DIFFERENCE
-- -----------------------------------------------------
-- DATA TYPE  = Defines what kind of data can be stored.
-- CONSTRAINT = Defines the rules that stored data must follow.


-- Example:
-- email VARCHAR(100) UNIQUE NOT NULL
--
-- VARCHAR(100) : Data Type (maximum 100 characters).
-- UNIQUE       : Constraint (no duplicate email).
-- NOT NULL     : Constraint (value is required).


-- =====================================================
--              END OF REFERENCE NOTE
-- =====================================================
