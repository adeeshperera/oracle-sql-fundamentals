-- =====================================================
-- COMPARISON OPERATORS
-- =====================================================
-- Shows various comparison operators: <>, <, >, <=, >=, =
-- These operators allow filtering based on different conditions

-- Find employees whose last name is NOT 'Jones'
-- <> means "not equal to"
Select employee_id, first_name, last_name
From employee
Where last_name <> 'Jones';

-- Find employees with ID less than 8
-- < means "less than"
Select employee_id, first_name, last_name
From employee
Where employee_id < 8;