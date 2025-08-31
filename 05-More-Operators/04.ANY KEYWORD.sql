-- =====================================================
-- ANY KEYWORD WITH COMPARISON OPERATORS
-- =====================================================
-- ANY requires the condition to be true for AT LEAST ONE value in the list
-- Similar to SOME keyword (ANY and SOME are synonymous)

-- ANY OPERATOR EXPLANATIONS:
-- column = ANY()    - Column must equal at least one value (same as IN)
-- column > ANY()    - Column must be greater than at least one value
-- column >= ANY()   - Column must be greater than or equal to at least one value  
-- column < ANY()    - Column must be less than at least one value
-- column <= ANY()   - Column must be less than or equal to at least one value
-- column <> ANY()   - Column must not equal at least one value (usually returns most rows)

-- Find employees earning more than ANY of the values (30k, 40k, 50k)
-- Salary must be > 30000 OR > 40000 OR > 50000 (so > 30000)
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary > ANY (30000, 40000, 50000);

-- Find employees whose salary is not equal to ANY of the values
-- Returns employees whose salary is not 30000 OR not 40000 OR not 50000
-- (This will return almost all employees since most salaries differ from these values)
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary != ANY (30000, 40000, 50000);