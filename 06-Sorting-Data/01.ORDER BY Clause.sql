-- =====================================================
-- ORDER BY CLAUSE - SORTING QUERY RESULTS
-- =====================================================
-- ORDER BY sorts query results by one or more columns
-- ASC = ascending (A-Z, 1-9) - default behavior
-- DESC = descending (Z-A, 9-1)

-- Sort employees by last name in ascending order (A to Z)
-- Explicitly specifying ASC (though it's the default)
SELECT employee_id, first_name, last_name, salary
FROM employee
ORDER BY last_name ASC;

-- Same result as above - ASC is default when not specified
-- Sorts last names alphabetically from A to Z
SELECT employee_id, first_name, last_name, salary
FROM employee
ORDER BY last_name;