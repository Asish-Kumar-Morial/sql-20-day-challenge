# 1 - List all employees along with their department name
SELECT e.name,d.department_name
FROM employee e
JOIN department d 
ON e.department_id = d.department_id;

# 2 - Employees with department using LEFT JOIN
SELECT e.name,d.department_name
FROM employee e
LEFT JOIN department d
ON e.department_id = d.department_id;

# 3 - Find departments that currently have no employees
SELECT d.department_name
FROM department d
LEFT JOIN employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

# 4 - Orders with customer name
SELECT o.order_id,c.customer_name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

# 5 - Orders with customer city
SELECT o.order_id,c.city
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

# 6 - Customers without any orders
SELECT c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

# 7 - Show employee names along with their manager names
SELECT e.name AS Employee_Name,m.name AS Manager_Name
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id;

# 8 - Find Employees who do not have a manager
SELECT name
FROM employee 
WHERE manager_id IS NULL;

# 9 - Employees with manager and department name
SELECT e.name AS Employee_Name,m.name AS Manager_name,d.department_name AS Department_Name
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id
JOIN department d
ON e.department_id = d.department_id;

# 10 - Customers along with total number of orders
SELECT c.customer_name,COUNT(o.order_id) AS Total_Orders
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;