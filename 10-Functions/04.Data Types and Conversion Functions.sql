-- =====================================================
-- DATA TYPES AND CONVERSION FUNCTIONS
-- =====================================================
-- Oracle has various data types for different kinds of information
-- Conversion functions change data from one type to another
-- TO_CHAR: converts to character string, TO_DATE: converts to date, TO_NUMBER: converts to number

-- Oracle Data Types:
-- CHAR: fixed-length character string
-- VARCHAR2: variable-length character string  
-- NUMBER: numeric data with optional decimals
-- DATE: date and time information
-- TIMESTAMP: date, time, and fractional seconds
-- CLOB: large text objects

-- Convert date to formatted string
-- TO_CHAR with format mask controls output appearance
SELECT first_name,
       last_name,
       hire_date,
       TO_CHAR(hire_date, 'YYYY-MM-DD') AS formatted_date    -- Convert date to string format
FROM employee;

-- Convert string to date using specific format
-- DUAL is Oracle's dummy table for testing functions
SELECT TO_DATE('2017-05-28', 'YYYY-MM-DD') AS converted_date
FROM dual;

-- Convert string to number
-- Useful when numeric data is stored as text
SELECT TO_NUMBER('200') AS converted_number
FROM dual;

