-- =====================================================
-- TABLE ALIASES - SHORTER TABLE NAMES
-- =====================================================
-- Aliases provide shorter, more convenient names for tables
-- Useful for reducing typing and improving readability
-- Required when joining tables with same column names

-- Use alias 'e' for employee table
-- Allows referencing columns as e.salary instead of employee.salary
SELECT employee_id, first_name, last_name, e.salary
FROM employee e
WHERE e.salary < 30000;