-- =====================================================
-- FULL OUTER JOIN - ALL FROM BOTH TABLES
-- =====================================================
-- FULL OUTER JOIN combines LEFT and RIGHT joins
-- Returns ALL rows from both tables
-- Shows NULL where no match exists on either side

-- Show all departments and all employees
-- Includes departments with no employees AND employees with no department
-- Note: This should be FULL OUTER JOIN, not RIGHT JOIN
SELECT d.department_id,
       d.department_name,
       e.employee_id,
       e.first_name,
       e.last_name
FROM employee e
FULL OUTER JOIN department d ON e.department_id = d.department_id
ORDER BY d.department_id, e.employee_id;