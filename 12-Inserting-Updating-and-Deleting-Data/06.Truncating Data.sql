-- =====================================================
-- TRUNCATE STATEMENT - REMOVING ALL DATA
-- =====================================================
-- TRUNCATE removes ALL rows from a table quickly
-- Faster than DELETE without WHERE clause
-- Cannot be rolled back (auto-commits)
-- Resets table to empty state but keeps structure

-- Remove all data from customer_order table
-- WARNING: This cannot be undone - use with extreme caution
-- Consider backing up data before truncating
TRUNCATE TABLE customer_order;