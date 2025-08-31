-- =====================================================
-- CREATE TABLE - DDL STATEMENT CATEGORIES
-- =====================================================
-- SQL statements are grouped into three main categories:

-- DML (Data Manipulation Language): Works with data inside tables
--   - SELECT, INSERT, UPDATE, DELETE
--   - Changes or retrieves data content

-- DDL (Data Definition Language): Works with database structure
--   - CREATE, ALTER, DROP, TRUNCATE
--   - Defines and modifies database objects

-- TCL (Transaction Control Language): Controls transactions
--   - COMMIT, ROLLBACK, SAVEPOINT
--   - Manages data change transactions

-- CREATE TABLE: DDL statement that creates new table structure
-- Define column names, data types, and sizes
-- Table structure must be planned before creation
CREATE TABLE job_role(
    job_role_id NUMBER(10),         -- Numeric ID with up to 10 digits
    role_name VARCHAR2(50),         -- Variable character string, max 50 chars
    role_create_date DATE           -- Date column for creation timestamp
);