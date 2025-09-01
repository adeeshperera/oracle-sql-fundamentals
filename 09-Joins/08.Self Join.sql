-- =====================================================
-- SELF JOIN - JOINING TABLE TO ITSELF
-- =====================================================
-- Self join connects a table to itself using different aliases
-- Useful for hierarchical data (employee-manager relationships)
-- Requires careful aliasing to distinguish between the two table instances

-- Show employees with their managers
-- 'emp' alias represents employee, 'mgr' alias represents manager
-- LEFT JOIN ensures employees without managers are still shown
SELECT emp.employee_id,
       emp.first_name,
       emp.last_name,
       emp.manager_id,
       mgr.first_name AS manager_first_name,
       mgr.last_name AS manager_last_name
FROM employee emp
LEFT JOIN employee mgr ON emp.manager_id = mgr.employee_id;