-- =====================================================
-- UPDATE STATEMENT - MODIFYING EXISTING DATA
-- =====================================================
-- UPDATE changes values in existing table rows
-- SET clause specifies which columns to change and their new values
-- WHERE clause determines which rows to update (CRITICAL!)
-- Without WHERE, ALL rows will be updated

-- Give salary increase to specific employee
-- Increases salary by $10,000 for employee ID 85
-- WHERE clause ensures only one employee is affected
UPDATE employee
SET salary = salary + 10000
WHERE employee_id = 85;