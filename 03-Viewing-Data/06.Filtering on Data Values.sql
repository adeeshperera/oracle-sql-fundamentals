-- =====================================================
-- FILTERING BY DATE VALUES
-- =====================================================
-- Demonstrates how to filter records using date comparisons
-- Oracle dates can be compared using standard operators

-- Find employees hired on exactly October 3, 2010
-- Uses exact date matching
Select *
From employee
Where hire_date = '03-oct-2010';

-- Find employees hired on or after January 23, 2012
-- >= means "greater than or equal to"
Select *
From employee
Where hire_date >= '23-Jan-2012';
