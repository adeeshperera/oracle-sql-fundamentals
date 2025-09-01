-- =====================================================
-- COUNT FUNCTION VARIATIONS
-- =====================================================
-- COUNT can be used with conditions and DISTINCT keyword
-- Shows different ways to count specific subsets of data

-- Count employees named 'Barbara'
-- WHERE clause filters before counting
SELECT COUNT(*)
FROM employee
WHERE first_name = 'Barbara';

-- Count unique last names in employee table
-- DISTINCT eliminates duplicates before counting
SELECT COUNT(DISTINCT last_name)
FROM employee;