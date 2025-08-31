-- =====================================================
-- INSERT FROM QUERY - COPYING DATA BETWEEN TABLES
-- =====================================================
-- INSERT can use SELECT to copy data from other tables
-- Useful for data migration, creating test data, or archiving
-- SELECT columns must match INSERT columns in order and type

-- Copy customer data to employee table
-- Takes customer's name and creates new employee record
-- Uses fixed employee_id (250) and copies name from customer table
INSERT INTO employee (employee_id, first_name, last_name)
SELECT 250, first_name, last_name
FROM customer
WHERE customer_id = 1;