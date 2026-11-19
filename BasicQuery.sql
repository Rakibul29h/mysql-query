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
