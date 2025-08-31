-- =====================================================
-- GROUPING BY MULTIPLE COLUMNS
-- =====================================================
-- GROUP BY can use multiple columns to create more specific groups
-- Creates unique combinations of all specified columns

-- Group by both last name and department
-- Counts employees for each unique last_name + department_id combination
SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name, department_id
ORDER BY last_name;

-- Same grouping but sorted by count (highest first)
-- Shows which name/department combinations are most common
SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name, department_id
ORDER BY COUNT(*) DESC;