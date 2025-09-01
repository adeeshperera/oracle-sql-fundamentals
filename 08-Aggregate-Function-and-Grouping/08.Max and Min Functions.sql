-- =====================================================
-- MIN AND MAX FUNCTIONS - FINDING EXTREMES
-- =====================================================
-- MIN finds the smallest value, MAX finds the largest value
-- Work with numbers, dates, and text (alphabetical order)

-- Find the lowest salary in the company
SELECT MIN(salary)
FROM employee;

-- Find both highest and lowest salaries in one query
-- Shows the salary range across all employees
SELECT MAX(salary), MIN(salary)
FROM employee;

-- Find highest salary in each department
-- Groups by department to show departmental salary peaks
SELECT department_id, MAX(salary)
FROM employee
GROUP BY department_id;

-- Find the most recent hire date
-- MAX with dates returns the latest date
SELECT MAX(hire_date)
FROM employee;

-- Find alphabetically first last name
-- MIN with text returns the earliest alphabetical value
SELECT MIN(last_name)
FROM employee;