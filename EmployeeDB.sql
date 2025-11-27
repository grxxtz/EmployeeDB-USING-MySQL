CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (emp_name, department, salary) VALUES
('Rahul Sharma', 'IT', 55000),
('Ankit Verma', 'HR', 40000),
('Neha Singh', 'Finance', 60000);

-- Fetch all IT employees
SELECT * FROM employees WHERE department = 'IT';

-- Increase salary for HR by 10%
UPDATE employees SET salary = salary + salary * 0.1 
WHERE department = 'HR';

-- Average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
