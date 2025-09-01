-- =====================================================
-- SELECTING SPECIFIC COLUMNS
-- =====================================================
-- Shows how to retrieve only specific columns instead of all columns
-- This improves performance and reduces data transfer

-- Select only employee ID and name columns
Select employee_id, first_name, last_name
From employee;

-- Select only department information
Select department_id, department_name
From department;