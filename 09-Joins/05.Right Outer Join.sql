-- =====================================================
-- RIGHT OUTER JOIN - ALL FROM RIGHT TABLE
-- =====================================================
-- RIGHT JOIN returns ALL rows from right table
-- Matching rows from left table, or NULL if no match exists
-- Less commonly used than LEFT JOIN

-- Show all departments, with or without employees
-- Includes departments that have no employees assigned
-- NULL values appear for departments with no employees
SELECT d.department_id,
       d.department_name,
       e.employee_id,
       e.first_name,
       e.last_name
FROM employee e
RIGHT JOIN department d ON e.department_id = d.department_id
ORDER BY d.department_id;

