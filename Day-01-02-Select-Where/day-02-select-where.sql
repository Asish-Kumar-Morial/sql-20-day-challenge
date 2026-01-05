# 11 - Get employees hired before 2020
SELECT name FROM employee WHERE hire_date < '2020-01-01';

# 12 - Get employees with NULL manager
SELECT name FROM employee WHERE manager_id IS NULL;

# 13 - Get employees with NOT NULL manager
SELECT name FROM employee WHERE manager_id IS NOT NULL;

# 14 - Get employees from departments 10 or 30
SELECT name FROM employee WHERE department_id IN(10,30);

# 15 - Get employees with salary >= 60,000 and department 20
SELECT name FROM employee WHERE salary >= 60000 AND department_id = 20;

# 16 - Get employees ordered by salary (ascending)
SELECT name,salary FROM employee ORDER BY salary;

# 17 - Get employees ordered by salary (descending)
SELECT name,salary FROM employee ORDER BY salary DESC;

# 18 - Get top 3 highest paid employees
SELECT name,salary FROM employee ORDER BY salary DESC limit 3;

# 19 - Get distinct department IDs
SELECT DISTINCT department_id FROM employee;

# 20 - Get employees excluding salary 60,000
SELECT name,salary FROM employee WHERE salary <> 60000;