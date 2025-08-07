create database employee;

use employee;

-- Create the employees table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER,
    join_date DATE
);

-- Insert sample data into employees table
INSERT INTO employees (id, name, department, salary, join_date) VALUES
(1, 'Alice', 'IT', 70000, '2021-05-10'),
(2, 'Bob', 'Sales', 45000, '2019-03-15'),
(3, 'Charlie', 'IT', 80000, '2020-07-22'),
(4, 'David', 'HR', 55000, '2018-11-30'),
(5, 'Eva', 'Sales', 60000, '2022-01-20'),
(6, 'Frank', 'IT', 52000, '2023-04-17'),
(7, 'Grace', 'Finance', 75000, '2020-08-25'),
(8, 'Heidi', 'Sales', 48000, '2021-12-10');

-- 1. Select all columns from the employees table
SELECT * FROM employees;

-- 2. Select only name and salary of all employees
SELECT name, salary FROM employees;

-- 3. Select employees from the 'Sales' department
SELECT * FROM employees
WHERE department = 'Sales';

-- 4. Select employees with salary greater than 50000
SELECT * FROM employees
WHERE salary > 50000;

-- 5. Select top 5 highest paid employees
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 6. Select employees who joined after 2020-01-01
SELECT * FROM employees
WHERE join_date > '2020-01-01';

-- 7. Select employees from 'IT' department, ordered by name ascending
SELECT * FROM employees
WHERE department = 'IT'
ORDER BY name ASC;

-- 8. Select names and salaries of employees, ordered by salary descending, limit 3
SELECT name, salary FROM employees
ORDER BY salary DESC
LIMIT 3;