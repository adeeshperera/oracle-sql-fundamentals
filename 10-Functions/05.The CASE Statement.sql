-- =====================================================
-- CASE STATEMENT - CONDITIONAL LOGIC
-- =====================================================
-- CASE provides IF-THEN-ELSE logic within SQL
-- Evaluates conditions in order, returns first matching result
-- ELSE clause handles values that don't match any condition

-- Categorize products by price ranges
-- Creates meaningful price groups for analysis
SELECT product_id,
       product_name,
       price,
       CASE
           WHEN price > 200 THEN 'Over 200'
           WHEN price > 100 AND price <= 200 THEN 'Between 100 and 200'
           WHEN price > 50 AND price <= 100 THEN 'Between 50 and 100'
           ELSE 'Under 50'
       END AS price_group
FROM product;

-- Group customers by geographic regions
-- Uses state codes to determine regional classification
SELECT customer_id,
       first_name,
       last_name,
       address_state,
       CASE
           WHEN address_state IN ('NY', 'SC', 'FL', 'IN') THEN 'East'
           WHEN address_state IN ('CA', 'OR', 'TX') THEN 'West'
           ELSE 'Unknown'
       END AS state_group
FROM customer;