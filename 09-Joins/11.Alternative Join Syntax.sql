-- =====================================================
-- ALTERNATIVE JOIN SYNTAX (LEGACY)
-- =====================================================
-- Old-style join syntax using WHERE clause instead of JOIN keyword
-- Oracle-specific (+) operator for outer joins
-- NOT RECOMMENDED - use modern JOIN syntax instead

-- Legacy syntax example (incomplete - missing JOIN condition)
-- This would create a cartesian product without proper WHERE join condition
-- Modern equivalent would use explicit JOIN with ON clause
SELECT employee_id,
       first_name,
       last_name,
       department_name,
       salary,
       hire_date
FROM employee, department
WHERE salary > 50000
AND hire_date > '01-JAN-2012';