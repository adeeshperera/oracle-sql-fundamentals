-- =====================================================
-- DROP TABLE - REMOVING TABLES COMPLETELY
-- =====================================================
-- DROP TABLE permanently removes table and all its data
-- Cannot be undone - table structure and data are completely deleted
-- Use with extreme caution in production environments

-- Remove entire table from database
-- WARNING: This action cannot be reversed
-- Consider backing up data before dropping tables
DROP TABLE job_role;

-- Alternative: DROP with PURGE (Oracle specific)
-- Bypasses recycle bin for immediate permanent deletion
-- DROP TABLE job_role PURGE;