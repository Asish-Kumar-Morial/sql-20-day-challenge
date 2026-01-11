# 1 - Employees count per department
SELECT department_id,COUNT(*) As Number_Of_Employees FROM employee GROUP BY department_id;

# 2 - Average salary per department
SELECT department_id,AVG(salary) AS Average_Salary FROM employee GROUP BY department_id;

# 3 - Max salary per department
SELECT department_id,MAX(salary) AS Maximum_Salary FROM employee GROUP BY department_id;

# 4 - Min salary per department
SELECT department_id,MIN(salary) FROM employee GROUP BY department_id;

# 5 - Total salary per department
SELECT department_id,SUM(salary) FROM employee GROUP BY department_id;

# 6 - Number of employees per manager
SELECT manager_id,COUNT(*) AS Number_Of_Employees FROM employee GROUP BY manager_id;

# 7 - Employees hired per year
SELECT YEAR(hire_date) AS Year,COUNT(*) AS Hired_Employees FROM employee GROUP BY YEAR(hire_date);

# 8 - Orders count per customer
SELECT customer_id,COUNT(*) AS Orders FROM orders GROUP BY customer_id;

# 9 - Total order amount per customer
SELECT customer_id,SUM(amount) As Total_Spent FROM orders GROUP BY customer_id;

# 10 - Avg order amount per customer
SELECT customer_id,AVG(amount) AS Average_Oderd_Amount FROM orders GROUP BY customer_id;