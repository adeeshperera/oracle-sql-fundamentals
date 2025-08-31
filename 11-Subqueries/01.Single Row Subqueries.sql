-- =====================================================
-- SINGLE ROW SUBQUERIES
-- =====================================================
-- Subquery is a query nested inside another query
-- Single row subqueries return exactly one value
-- Can be used with comparison operators (=, >, <, >=, <=, <>)
-- Inner query executes first, result used by outer query

-- Subquery Types:
-- Single row: returns one value (like AVG, MAX, MIN, COUNT)
-- Multi row: returns multiple values (requires IN, ANY, ALL operators)

-- Find employees earning more than company average
-- Subquery calculates average salary (single value)
-- Main query compares each employee's salary to this average
SELECT employee_id,
       first_name,
       last_name,
       salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)          -- Subquery: returns single average value
    FROM employee
);

