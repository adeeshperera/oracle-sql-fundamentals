-- =====================================================
-- STRING FUNCTIONS - TEXT MANIPULATION
-- =====================================================
-- String functions manipulate and analyze text data
-- Common functions: INSTR (find position), LENGTH (count characters)
-- SUBSTR (extract substring), UPPER/LOWER (case conversion)

-- Demonstrate INSTR and LENGTH functions
-- INSTR finds position of substring (returns 0 if not found)
-- LENGTH counts total characters in a string
SELECT customer_id,
       first_name,
       last_name,
       email_address,
       address_state,
       INSTR(email_address, '@') AS at_position,        -- Find @ symbol position
       LENGTH(address_state) AS state_length            -- Count characters in state
FROM customer
WHERE INSTR(email_address, '@') > 0                     -- Only valid emails (contain @)
AND LENGTH(address_state) = 2                           -- Only standard 2-letter state codes
ORDER BY LENGTH(email_address) DESC;                    -- Sort by email length (longest first)
