-- =====================================================
-- ALL KEYWORD WITH COMPARISON OPERATORS
-- =====================================================
-- ALL requires the condition to be true for ALL values in the list
-- Often used with subqueries, but can be used with value lists

-- ALL OPERATOR EXPLANATIONS:
-- column = ALL()    - Column must equal ALL values (usually impossible unless all values are same)
-- column > ALL()    - Column must be greater than ALL values in the list
-- column >= ALL()   - Column must be greater than or equal to ALL values
-- column < ALL()    - Column must be less than ALL values in the list  
-- column <= ALL()   - Column must be less than or equal to ALL values
-- column <> ALL()   - Column must not equal ANY of the values (same as NOT IN)

-- Find employees earning less than or equal to ALL values (30k, 40k, 50k)
-- Salary must be <= 30000 AND <= 40000 AND <= 50000 (so <= 30000)
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary <= ALL (30000, 40000, 50000);

-- Find employees whose salary equals ALL values
-- This will return no results (salary can't equal three different values)
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary = ALL (30000, 40000, 50000);