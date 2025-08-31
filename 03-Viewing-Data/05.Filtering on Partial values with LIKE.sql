-- =====================================================
-- LIKE OPERATOR FOR PATTERN MATCHING
-- =====================================================
-- LIKE operator searches for patterns in text data
-- % = wildcard for any number of characters
-- _ = wildcard for exactly one character

-- Find employees whose last name starts with 'Bu'
-- % after 'Bu' matches any characters following 'Bu'
Select employee_id, first_name, last_name
From employee
Where last_name Like 'Bu%';

-- Find employees whose last name contains the letter 'e'
-- % before and after 'e' matches any characters around 'e'
Select employee_id, first_name, last_name
From employee
Where last_name Like '%e%';