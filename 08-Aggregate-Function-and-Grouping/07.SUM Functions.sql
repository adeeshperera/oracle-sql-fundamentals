-- =====================================================
-- SUM FUNCTION - CALCULATING TOTALS
-- =====================================================
-- SUM adds up numeric values in a column
-- Ignores NULL values in calculations

-- Calculate total salary paid to all employees
-- SUM aggregates all salary values into one total
SELECT SUM(salary)
FROM employee;

-- Calculate total salary by department
-- Groups by department, then sums salary for each group
-- Ordered by total salary (highest paying departments first)
SELECT department_id, SUM(salary)
FROM employee
GROUP BY department_id
ORDER BY SUM(salary) DESC;