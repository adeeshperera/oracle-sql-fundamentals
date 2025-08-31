-- =====================================================
-- HANDLING NULL VALUES
-- =====================================================
-- NULL represents missing or unknown data
-- Cannot use = or <> with NULL; must use IS NULL or IS NOT NULL

-- Find employees with missing salary information
-- IS NULL checks for NULL values
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE salary IS NULL;

-- Find employees with known salary information
-- IS NOT NULL excludes NULL values
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE salary IS NOT NULL;