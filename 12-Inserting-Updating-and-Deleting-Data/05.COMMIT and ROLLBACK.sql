-- =====================================================
-- TRANSACTION CONTROL - COMMIT AND ROLLBACK
-- =====================================================
-- Oracle treats data changes as transactions (units of work)
-- Changes are temporary until explicitly committed
-- COMMIT saves all changes permanently
-- ROLLBACK undoes all changes since last commit

-- COMMIT: Makes all pending changes permanent
-- Use after verifying changes are correct
COMMIT;

-- Insert new product (this change is temporary until committed)
INSERT INTO product (product_id, product_name, price, department_id)
VALUES (15, 'Red Chair', 52, 6);

-- ROLLBACK: Undoes all changes since last commit
-- Use if you make a mistake or want to cancel changes
-- This will undo the INSERT above
ROLLBACK;