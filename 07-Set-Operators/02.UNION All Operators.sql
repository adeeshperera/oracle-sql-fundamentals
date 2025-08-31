-- =====================================================
-- UNION ALL OPERATOR - KEEPING DUPLICATES
-- =====================================================
-- UNION ALL combines results from two queries but keeps all duplicates
-- Faster than UNION since it doesn't need to check for and remove duplicates

-- Combine employee and customer names, keeping all records
-- If same name exists in both tables, it will appear twice
-- Sorted by first name, then last name using column positions
SELECT first_name, last_name
FROM employee
UNION ALL
SELECT first_name, last_name
FROM customer
ORDER BY 1, 2;
