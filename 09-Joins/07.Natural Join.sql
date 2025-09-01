-- =====================================================
-- NATURAL JOIN - AUTOMATIC COLUMN MATCHING
-- =====================================================
-- NATURAL JOIN automatically joins on columns with same names
-- Less code but potentially dangerous in production
-- NOT RECOMMENDED for production use due to maintenance risks

-- CAUTION: Natural joins can break if:
-- - Column names change
-- - New columns with same names are added
-- - Database schema evolves

-- Natural join between employee and department
-- Automatically joins on department_id (common column name)
SELECT d.department_id,
       d.department_name,
       e.employee_id,
       e.first_name,
       e.last_name
FROM employee e
NATURAL JOIN department d;

-- Natural join between product and department
-- Also automatically uses department_id for joining
SELECT product_id,
       product_name,
       department_id,
       department_name
FROM product
NATURAL JOIN department;