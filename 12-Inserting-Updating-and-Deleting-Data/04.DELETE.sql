-- =====================================================
-- DELETE STATEMENT - REMOVING DATA
-- =====================================================
-- DELETE removes entire rows from a table
-- WHERE clause specifies which rows to delete (CRITICAL!)
-- Without WHERE, ALL rows will be deleted
-- Consider using SELECT first to verify which rows will be affected

-- Remove specific employee from table
-- Deletes the entire row for employee ID 250
-- WHERE clause prevents accidental deletion of other employees
DELETE FROM employee
WHERE employee_id = 250;