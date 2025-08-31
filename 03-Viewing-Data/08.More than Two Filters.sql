-- =====================================================
-- MULTIPLE CONDITIONS AND OPERATOR PRECEDENCE
-- =====================================================
-- Demonstrates complex filtering with multiple AND/OR conditions
-- AND has higher precedence than OR (evaluated first)

-- Find Barbara employees hired before Dec 2014 AND earning less than 70k
-- All three conditions must be true (connected by AND)
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Barbara'
AND hire_date < '01-DEC-2014'
AND salary < 70000;

-- Mixed AND/OR logic - demonstrates operator precedence
-- Finds: (Barbara hired before Dec 2014) OR (anyone earning less than 70k)
-- AND is evaluated before OR due to precedence
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Barbara'
AND hire_date < '01-DEC-2014'
OR salary < 70000;