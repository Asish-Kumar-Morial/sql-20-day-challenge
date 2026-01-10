# 11 - Number of orders
SELECT COUNT(*) AS Number_Of_Orders FROM orders;

# 12 - Total order amount
SELECT SUM(amount) AS Total_Order_Amount FROM orders;

# 13 - Average salary per employee
SELECT AVG(salary) AS Average_Salary FROM employee;

# 14 - Count employees with manager
SELECT COUNT(*) AS Employees_With_Manager FROM employee WHERE manager_id IS NOT NULL;

# 15 - Count employees without manager
SELECT COUNT(*) AS Employees_Without_Manager FROM employee WHERE manager_id IS NULL;

# 16 - Salary difference (max - min)
SELECT MAX(salary) - MIN(salary) AS Salary_Difference FROM employee;

# 17 - Max salary per department
SELECT department_id, MAX(salary) AS Maximum_Salary FROM employee GROUP BY department_id;

# 18 - Min salary per department
SELECT department_id, MIN(salary) AS Minimum_Salary FROM employee GROUP BY department_id;

# 19 - Avg salary per department
SELECT department_id, AVG(salary) AS Average_Salary FROM employee GROUP BY department_id;

# 20 - Total salary per department
SELECT department_id, SUM(salary) AS Total_Salary FROM employee GROUP BY department_id;