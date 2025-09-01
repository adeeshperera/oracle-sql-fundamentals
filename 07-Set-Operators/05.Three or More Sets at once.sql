-- =====================================================
-- CHAINING MULTIPLE SET OPERATORS
-- =====================================================
-- Multiple set operators can be chained together in one query
-- Operations are evaluated left to right with equal precedence
-- Use parentheses to control evaluation order if needed

-- Complex example combining all set operators:
-- 1. UNION: Combines employees earning 28k-40k with those earning 20k-30k
-- 2. INTERSECT: From that result, keep only those also earning 30k-55k  
-- 3. MINUS: From that result, remove those earning 25k-28k
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
INTERSECT
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000
MINUS
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 25000 AND 28000;