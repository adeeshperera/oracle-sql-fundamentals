-- =====================================================
-- COMBINING CONDITIONS WITH AND/OR
-- =====================================================
-- Shows how to combine multiple conditions using logical operators
-- AND = both conditions must be true
-- OR = at least one condition must be true

-- Find employee named exactly 'John Hayes'
-- AND requires BOTH first_name AND last_name conditions to be true
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'John' AND last_name = 'Hayes';

-- Find employees named either 'John' OR with last name 'Hayes'
-- OR requires only ONE of the conditions to be true
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'John' OR last_name = 'Hayes';