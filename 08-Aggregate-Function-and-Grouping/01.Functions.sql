-- =====================================================
-- INTRODUCTION TO AGGREGATE FUNCTIONS
-- =====================================================
-- Aggregate functions perform calculations on multiple rows
-- Common functions: COUNT, SUM, AVG, MIN, MAX
-- They return a single result from a set of values

-- COUNT(*) counts total number of rows in the table
-- Includes rows with NULL values
SELECT COUNT(*)
FROM employee;

