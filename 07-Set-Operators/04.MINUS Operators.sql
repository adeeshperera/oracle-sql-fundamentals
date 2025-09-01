-- =====================================================
-- MINUS OPERATOR - SUBTRACTING RESULT SETS
-- =====================================================
-- MINUS returns records from first query that do NOT exist in second query
-- Also known as EXCEPT in some other database systems

-- Find employee names that do NOT appear in customer table
-- Returns employees whose names are unique to employee table
SELECT first_name, last_name
FROM employee
MINUS
SELECT first_name, last_name
FROM customer;

