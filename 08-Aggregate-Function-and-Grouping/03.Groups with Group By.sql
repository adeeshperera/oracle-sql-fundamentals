-- =====================================================
-- GROUP BY CLAUSE - CREATING DATA GROUPS
-- =====================================================
-- GROUP BY groups rows with same values into summary rows
-- Allows aggregate functions to operate on each group separately

-- Count how many employees share each last name
-- Groups employees by last_name and counts each group
SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name;

-- View all products to understand the data
SELECT *
FROM product;

-- Count products by department
-- Shows how many products each department handles
SELECT department_id, COUNT(*)
FROM product
GROUP BY department_id;