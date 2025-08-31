-- =====================================================
-- INNER JOIN - MATCHING RECORDS FROM BOTH TABLES
-- =====================================================
-- INNER JOIN returns only rows with matching values in both tables
-- Most commonly used join type for related data
-- Requires ON clause to specify join condition

-- Basic inner join: employee with department information
-- Shows only employees who have a valid department assignment
SELECT employee_id,
       first_name,
       last_name,
       department_name,
       d.department_id
FROM employee e
JOIN department d ON e.department_id = d.department_id;

-- Same join with table prefixes for clarity
-- Good practice to prefix all columns when joining tables
SELECT e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name,
       d.department_id
FROM employee e
JOIN department d ON e.department_id = d.department_id;

-- Inner join with additional filtering
-- First joins tables, then applies WHERE condition
SELECT e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name,
       d.department_id,
       e.salary
FROM employee e
JOIN department d ON e.department_id = d.department_id
WHERE e.salary > 60000;