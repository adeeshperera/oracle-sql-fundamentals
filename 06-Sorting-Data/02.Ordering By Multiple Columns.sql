-- =====================================================
-- ORDERING BY MULTIPLE COLUMNS
-- =====================================================
-- ORDER BY can sort by multiple columns with different sort directions
-- Primary sort column is listed first, secondary sort follows

-- Sort by last name ascending, then by first name descending
-- First sorts all records by last_name (A-Z)
-- For employees with same last name, sorts by first_name (Z-A)
SELECT employee_id, first_name, last_name, salary
FROM employee
ORDER BY last_name ASC, first_name DESC;