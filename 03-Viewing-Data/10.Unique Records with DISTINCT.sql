-- =====================================================
-- REMOVING DUPLICATES WITH DISTINCT
-- =====================================================
-- DISTINCT eliminates duplicate rows from query results
-- Useful when you want to see unique combinations of values

-- Show all last names and departments (may include duplicates)
-- Multiple employees can have same last name or be in same department
Select last_name, department_id
From employee;

-- Show unique combinations of last names and departments
-- DISTINCT removes duplicate combinations
Select DISTINCT last_name, department_id
From employee;