# 11 - Departments with total salary > 1,00,000
SELECT d.department_name,SUM(e.salary) AS Total_Salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING SUM(e.salary) > 100000;

# 12 - Customers with avg order value > 10,000
SELECT c.customer_name,AVG(o.amount) AS Average_Order_Value
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING AVG(o.amount) > 10000;

# 13 - Managers with avg salary of team > 60,000
SELECT manager_id,AVG(salary) AS Average_Salary
FROM employee
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING AVG(salary) > 60000;

# 14 - Departments with more than 1 managers
SELECT d.department_name,COUNT(DISTINCT e.manager_id) AS Number_Of_Managers
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
WHERE e.manager_id IS NOT NULL
GROUP BY d.department_name
HAVING COUNT(DISTINCT e.manager_id) > 1;

# 15 - Cities with total orders > 50,000
SELECT c.city,SUM(o.amount) AS Total_Order
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING SUM(o.amount) > 50000;

# 16 - Departments with employees between 2 and 5
SELECT d.department_name,COUNT(e.emp_id) AS Number_Of_Employees
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.emp_id) BETWEEN 2 AND 5;

# 17 - Years with more than 2 hires
SELECT YEAR(hire_date) AS Year,COUNT(emp_id) AS Hired_Employees
FROM employee
GROUP BY YEAR(hire_date)
HAVING COUNT(emp_id) > 2
ORDER BY YEAR(hire_date);

# 18 - Customers with minimum order > 15,000
SELECT c.customer_name,MIN(o.amount) AS Minimum_Order_Amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING MIN(o.amount) > 15000;

# 19 - Departments having salary range > 5,000
SELECT d.department_name, MAX(e.salary) - MIN(e.salary) AS Salary_Range
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING MAX(e.salary) - MIN(e.salary) > 5000;


# 20 - Departments with average salary > 50,000
SELECT d.department_name,AVG(e.salary) AS Average_Salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 50000;
