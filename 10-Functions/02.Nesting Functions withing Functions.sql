-- =====================================================
-- NESTING FUNCTIONS - COMBINING MULTIPLE FUNCTIONS
-- =====================================================
-- Functions can be nested inside other functions
-- Inner functions execute first, results passed to outer functions
-- Useful for complex string manipulation and data extraction

-- Extract domain name from email address using nested functions
-- Step 1: INSTR finds @ position
-- Step 2: SUBSTR extracts everything after @ using INSTR result
-- Step 3: LENGTH calculates total email length for SUBSTR
SELECT customer_id,
       first_name,
       last_name,
       email_address,
       address_state,
       INSTR(email_address, '@') AS at_position,
       -- Extract domain: start after @, get remaining characters
       SUBSTR(email_address, INSTR(email_address, '@')+1, LENGTH(email_address)) AS domain
FROM customer;