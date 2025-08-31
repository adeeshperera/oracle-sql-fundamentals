-- =====================================================
-- INTERSECT OPERATOR - FINDING COMMON RECORDS
-- =====================================================
-- INTERSECT returns only records that appear in BOTH queries
-- Useful for finding shared data between different tables

-- Find names that exist in both employee and customer tables
-- Returns only names that appear in both tables (common names)
SELECT first_name, last_name
FROM employee
INTERSECT
SELECT first_name, last_name
FROM customer;

