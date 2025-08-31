-- =====================================================
-- GROUP BY WITH WHERE AND ORDER BY
-- =====================================================
-- Combines filtering (WHERE), grouping (GROUP BY), and sorting (ORDER BY)
-- Execution order: WHERE -> GROUP BY -> ORDER BY

-- Count employees with last names starting with 'B'
-- WHERE filters before grouping, GROUP BY creates groups, then counts
SELECT last_name, COUNT(*)
FROM employee
WHERE last_name LIKE 'B%'
GROUP BY last_name;

-- Same as above but sorted by count in descending order
-- ORDER BY can reference aggregate functions used in SELECT
SELECT last_name, COUNT(*)
FROM employee
WHERE last_name LIKE 'B%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;