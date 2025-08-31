-- =====================================================
-- LEFT OUTER JOIN - ALL FROM LEFT TABLE
-- =====================================================
-- LEFT JOIN returns ALL rows from left table
-- Matching rows from right table, or NULL if no match exists
-- Useful for finding records that may not have related data

-- INNER JOIN for comparison - only customers with orders
-- Shows customers who have placed at least one order
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       co.order_date
FROM customer c
INNER JOIN customer_order co ON c.customer_id = co.customer_id;

-- LEFT JOIN - ALL customers, with or without orders
-- Shows all customers, including those who haven't ordered anything
-- NULL values appear for customers with no orders
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       co.order_date
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id;