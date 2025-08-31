-- =====================================================
-- CARTESIAN (CROSS) JOIN - ALL COMBINATIONS
-- =====================================================
-- CROSS JOIN creates cartesian product of two tables
-- Every row from first table paired with every row from second table
-- Usually produces very large result sets - use with caution

-- Creates every possible employee-department combination
-- If 200 employees and 9 departments = 1,800 result rows
-- Rarely useful in practice, often indicates missing join condition
SELECT employee_id, first_name, last_name
FROM employee
CROSS JOIN department;

