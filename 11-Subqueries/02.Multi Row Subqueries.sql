-- =====================================================
-- MULTI ROW SUBQUERIES
-- =====================================================
-- Multi row subqueries return multiple values/rows
-- Cannot use simple comparison operators (=, >, <)
-- Must use IN, ANY, ALL, or EXISTS operators
-- IN is most commonly used for multi row subqueries

-- Find employees in Sales and Finance departments
-- Subquery returns multiple department_id values
-- IN operator checks if employee's department_id matches any returned value
SELECT employee_id,
       first_name,
       last_name,
       department_id
FROM employee
WHERE department_id IN (
    SELECT department_id        -- Subquery: returns multiple department IDs
    FROM department
    WHERE department_name IN ('Sales', 'Finance')
);