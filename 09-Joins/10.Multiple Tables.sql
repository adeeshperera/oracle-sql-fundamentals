-- =====================================================
-- JOINING MULTIPLE TABLES
-- =====================================================
-- Multiple tables can be joined by chaining JOIN clauses
-- Each JOIN connects two tables at a time
-- Build complex relationships by connecting related tables

-- Join customer, order, and product tables
-- Shows complete order information with customer and product details
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       c.address_state,
       co.order_id,
       co.order_date,
       p.product_name,
       p.price
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id
JOIN product p ON co.product_id = p.product_id
ORDER BY co.order_id;

-- Four-table join using LEFT JOINs
-- Shows all customers, even those without orders
-- Includes full product and department information where available
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       c.address_state,
       co.order_id,
       co.order_date,
       p.product_name,
       p.price,
       d.department_name
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id
LEFT JOIN product p ON co.product_id = p.product_id
LEFT JOIN department d ON p.department_id = d.department_id
ORDER BY c.customer_id;