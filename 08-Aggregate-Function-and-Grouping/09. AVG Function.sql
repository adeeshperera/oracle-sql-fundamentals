-- =====================================================
-- AVG FUNCTION - CALCULATING AVERAGES
-- =====================================================
-- AVG calculates the arithmetic mean of numeric values
-- Ignores NULL values when calculating the average

-- Calculate average salary by department
-- Groups employees by department and finds mean salary for each
-- Ordered by average salary (lowest to highest)
SELECT department_id, AVG(salary)
FROM employee
GROUP BY department_id
ORDER BY AVG(salary);