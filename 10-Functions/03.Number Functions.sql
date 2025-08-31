-- =====================================================
-- NUMBER FUNCTIONS - MATHEMATICAL OPERATIONS
-- =====================================================
-- Number functions perform calculations and rounding operations
-- ROUND: rounds to nearest value (with optional decimal places)
-- CEIL: always rounds up to next whole number (ceiling)
-- FLOOR: always rounds down to previous whole number

-- View original product data
SELECT product_id,
       product_name,
       price
FROM product
WHERE product_id = 1;

-- Apply bulk pricing calculation with different rounding methods
-- Calculate price for 9 units with 15% discount (multiply by 9 * 0.85)
SELECT product_id,
       product_name,
       price,
       price * 9 * 0.85 AS raw_calculation,                    -- Exact calculation
       ROUND(price * 9 * 0.85, 2) AS rounded_to_cents,        -- Round to 2 decimal places
       CEIL(price * 9 * 0.85) AS rounded_up,                  -- Always round up
       FLOOR(price * 9 * 0.85) AS rounded_down                -- Always round down
FROM product
WHERE product_id = 1;