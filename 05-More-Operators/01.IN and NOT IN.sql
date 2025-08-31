-- =====================================================
-- IN AND NOT IN OPERATORS
-- =====================================================
-- IN operator simplifies multiple OR conditions
-- More efficient and readable than multiple OR statements

-- Traditional approach using multiple OR conditions
-- Finds employees with specific last names
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE last_name = 'Foster'
OR last_name = 'Elliott'
OR last_name = 'Mitchell'
OR last_name = 'Perry'
OR last_name = 'Lawson';

-- Same result using IN operator (preferred method)
-- Much cleaner and easier to read
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE last_name IN ('Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson');

-- NOT IN excludes rows that match any value in the list
-- Finds employees whose last names are NOT in the specified list
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE last_name NOT IN ('Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson');