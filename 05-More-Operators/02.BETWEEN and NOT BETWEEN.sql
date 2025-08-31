-- =====================================================
-- BETWEEN AND NOT BETWEEN OPERATORS
-- =====================================================
-- BETWEEN finds values within a range (inclusive of endpoints)
-- Useful for date ranges, salary ranges, or any numeric ranges

-- Find employees hired during the year 2016
-- BETWEEN includes both start and end dates (inclusive)
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE hire_date BETWEEN '01-JAN-2016' AND '31-DEC-2016';

-- Find employees hired outside of 2016
-- NOT BETWEEN excludes the specified range
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE hire_date NOT BETWEEN '01-JAN-2016' AND '31-DEC-2016';