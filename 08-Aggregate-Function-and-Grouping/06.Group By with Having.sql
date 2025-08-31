-- =====================================================
-- HAVING CLAUSE - FILTERING GROUPS
-- =====================================================
-- HAVING filters groups after GROUP BY (like WHERE but for groups)
-- Used with aggregate functions to filter based on group calculations

-- Find last names that appear more than once
-- HAVING filters groups where count > 1 (duplicate last names)
SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name
HAVING COUNT(*) > 1;

-- Find duplicate full names (first + last name combinations)
-- Groups by both names, then shows only duplicates
SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
HAVING COUNT(*) > 1;