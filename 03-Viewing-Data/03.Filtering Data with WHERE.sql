-- =====================================================
-- BASIC WHERE CLAUSE FILTERING
-- =====================================================
-- Demonstrates how to filter records using the WHERE clause
-- WHERE clause limits results to records that meet specific conditions

-- Find all employees named Jessica
-- Uses exact string matching (case-sensitive)
Select employee_id, first_name, last_name
From employee
Where first_name = 'Jessica';