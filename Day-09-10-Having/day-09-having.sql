# 1 - Departments having avg salary > 60,000
SELECT d.department_name,AVG(e.salary) AS Average_Salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 60000;

# 2 - Departments with more than 2 employees
SELECT d.department_name,COUNT(e.emp_id) AS Number_Of_Employees
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.emp_id) > 2;

# 3 - Managers managing more than 1 employees
SELECT manager_id,COUNT(emp_id) AS Number_Of_Employees
FROM employee
GROUP BY manager_id
HAVING COUNT(emp_id)>1;

# 4 - Customers with total order amount > 20,000
SELECT c.customer_name,SUM(o.amount) AS Total_Order_Amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.amount) > 20000;

# 5 - Departments with max salary > 70,000
SELECT d.department_name,MAX(e.salary) AS Max_Salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING MAX(e.salary) > 70000;

# 6 - Cities with more than 3 customers
SELECT city,COUNT(customer_id) AS Number_Of_Customers
FROM customers
GROUP BY city
HAVING COUNT(customer_id) > 3;

# 7 - Departments with min salary < 50,000
SELECT d.department_name,MIN(salary) AS Minimum_Salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING MIN(e.salary) < 50000;

# 8 - Orders grouped by customer having count > 5
SELECT c.customer_name,COUNT(o.order_id)
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY customer_name
HAVING COUNT(o.order_id) > 5;

# 9 - Employees hired per year > 2
SELECT YEAR(hire_date) AS Year, COUNT(emp_id) AS Number_Of_Employee
FROM employee
GROUP BY YEAR(hire_date)
HAVING COUNT(emp_id) > 2;

# 10 - Salary groups having avg > 50,000
SELECT d.department_name,AVG(e.salary) AS Average_Salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 50000;
