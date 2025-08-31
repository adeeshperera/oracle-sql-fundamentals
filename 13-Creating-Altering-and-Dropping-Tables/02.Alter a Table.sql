-- =====================================================
-- ALTER TABLE - MODIFYING TABLE STRUCTURE
-- =====================================================
-- ALTER TABLE modifies existing table structure after creation
-- Common operations: add/drop columns, change data types, rename objects
-- Changes table schema without affecting existing data (when possible)

-- ALTER TABLE capabilities:
-- - Add new columns
-- - Remove existing columns  
-- - Change column data types
-- - Rename columns or tables
-- - Add/modify constraints

-- Add new column to existing table
-- New column will be empty (NULL) for existing rows
ALTER TABLE job_role
ADD job_description VARCHAR2(200);

-- Remove column from table
-- WARNING: This permanently deletes the column and all its data
ALTER TABLE job_role
DROP COLUMN job_description;

-- Rename existing column
-- Changes column name but preserves data and data type
ALTER TABLE job_role
RENAME COLUMN role_name TO job_title;

