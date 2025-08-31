-- =====================================================
-- UNION OPERATOR - COMBINING RESULT SETS
-- =====================================================
-- UNION combines results from two queries and removes duplicates
-- Both queries must have same number of columns with compatible data types

-- Basic UNION: Combine employee and customer names
-- Automatically removes duplicate names if any exist
SELECT first_name, last_name
FROM employee
UNION
SELECT first_name, last_name
FROM customer;

-- UNION with labels: Add identifier to distinguish source
-- Useful to know whether name came from employee or customer table
SELECT 'Employee', first_name, last_name
FROM employee
UNION
SELECT 'Customer', first_name, last_name
FROM customer;

-- UNION with ORDER BY: Sort the combined results
-- ORDER BY applies to the entire combined result set
SELECT 'Employee', first_name, last_name
FROM employee
UNION
SELECT 'Customer', first_name, last_name
FROM customer
ORDER BY last_name;

-- ORDER BY using column positions instead of names
-- 1 = first column, 2 = second column, etc.
SELECT 'Employee', first_name, last_name
FROM employee
UNION
SELECT 'Customer', first_name, last_name
FROM customer
ORDER BY 1, 2;