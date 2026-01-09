# 1 - Count total employees
SELECT COUNT(*) AS Total_Employees FROM employee;

# 2 - Count employees in department 10
SELECT COUNT(*) AS Employees_In_Department10 FROM employee WHERE department_id = 10;

# 3 - Find maximum salary
SELECT MAX(salary) AS Maximum_Salary FROM employee;

# 4 - Find minimum salary
SELECT MIN(salary) AS Minimum_Salary FROM employee;

# 5 - Find average salary
SELECT AVG(salary) AS Average_Salary FROM employee;

# 6 - Total salary paid
SELECT SUM(salary) AS Total_Salary_Paid FROM employee;

# 7 - Highest order amount
SELECT MAX(amount) AS Highest_Order_Amount FROM orders;

# 8 - Lowest order amount
SELECT MIN(amount) AS Lowest_Order_Amount FROM orders;

# 9 - Average order value
SELECT AVG(amount) AS Average_Order_Value FROM orders;

# 10 - Count distinct departments
SELECT COUNT(DISTINCT department_id) AS Distinct_Departments FROM employee;