/*
Oracle User Creation Script
---------------------------
This script creates a new Oracle database user with necessary privileges
for basic database operations including creating tables and managing data.
*/

-- Create a new user named 'intro_user' with password 'mypassword'
CREATE USER intro_user IDENTIFIED BY mypassword;

-- Grant CONNECT role to allow user to connect to the database
GRANT CONNECT TO intro_user;

-- Grant session creation and privilege granting capabilities
-- CREATE SESSION: Allows user to connect and create database sessions
-- GRANT ANY PRIVILEGE: Allows user to grant privileges to other users (administrative)
GRANT CREATE SESSION, GRANT ANY PRIVILEGE TO intro_user;

-- Grant unlimited tablespace quota to store data without space restrictions
-- This allows the user to create tables and store data in any tablespace
GRANT UNLIMITED TABLESPACE TO intro_user;

-- Grant permission to create tables in the user's schema
GRANT CREATE TABLE TO intro_user;
