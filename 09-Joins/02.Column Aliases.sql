-- =====================================================
-- COLUMN ALIASES - RENAMING OUTPUT COLUMNS
-- =====================================================
-- Column aliases provide meaningful names for calculated fields
-- Makes output more readable and professional
-- AS keyword is optional but recommended for clarity

-- Give descriptive name to COUNT(*) result
-- 'num_of_employees' is much clearer than 'COUNT(*)'
SELECT department_id, COUNT(*) AS num_of_employees
FROM employee
GROUP BY department_id
ORDER BY department_id;