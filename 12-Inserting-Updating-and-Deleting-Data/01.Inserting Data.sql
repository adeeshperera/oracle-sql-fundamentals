-- =====================================================
-- INSERT STATEMENT - ADDING NEW DATA
-- =====================================================
-- INSERT adds new rows to a table
-- Can specify column names explicitly (recommended)
-- Values must match column order and data types
-- Missing columns will use NULL or default values

-- Insert new employee with specific columns
-- Good practice to list column names for clarity
-- Only provides values for specified columns (others will be NULL)
INSERT INTO employee (employee_id, first_name, last_name, department_id)
VALUES (300, 'John', 'Smith', 3);

