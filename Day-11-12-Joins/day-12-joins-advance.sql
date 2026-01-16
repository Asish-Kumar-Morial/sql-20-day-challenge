# 11 - Department-wise total salary
SELECT d.department_name, SUM(e.salary) AS Total_Salary
FROM department d
LEFT JOIN employee e
ON d.department_id = e.department_id
GROUP BY d.department_name;

# 12 - Departments having more than 2 employees
SELECT d.department_name
FROM department d
JOIN employee e 
ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.emp_id) > 2;

# 13 - Customers along with total order amount
SELECT c.customer_name,SUM(o.amount) AS Total_Order_Amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

# 14 - Employees earning more than their department’s average salary
SELECT e.name,e.salary
FROM employee e
JOIN (
		SELECT department_id,AVG(salary) AS Average_salary
        FROM employee
        GROUP BY department_id
	) d
ON e.department_id = d.department_id
WHERE e.salary > d.Average_salary;

# 15 - Employees working under the same manager
SELECT m.name AS Manager_Name,GROUP_CONCAT(e.name) AS Employee_name
FROM employee e
JOIN employee m
ON e.manager_id = m.emp_id
GROUP BY Manager_Name;

# 16 - Departments having salary range greater than 25,000
SELECT d.department_name, MAX(e.salary) - MIN(e.salary) AS Salary_Range
FROM department d
JOIN employee e
ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING Salary_Range > 25000;

# 17 - Customers who placed orders in multiple months
SELECT c.customer_name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(DISTINCT MONTH(o.order_date)) > 1;

# 18 - Managers who manage employees from the same department
SELECT DISTINCT m.name AS Manger_Name
FROM employee e
JOIN employee m
ON e.manager_id = m.emp_id
WHERE e.department_id = m.department_id;

# 19 - Customers whose total order value is greater than the city average
SELECT c.customer_name,
       SUM(o.amount) AS Total_Order_Value
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING SUM(o.amount) >
(
    SELECT AVG(city_total)
    FROM (
        SELECT c2.customer_id,
               SUM(o2.amount) AS city_total
        FROM customers c2
        JOIN orders o2
        ON c2.customer_id = o2.customer_id
        WHERE c2.city = c.city
        GROUP BY c2.customer_id
    ) t
);


# 20 - Departments with at least one employee earning above the department average
SELECT DISTINCT d.department_name
FROM employee e
JOIN department d
ON e.department_id = d.department_id
WHERE e.salary >
(
	SELECT AVG(e2.salary)
    FROM employee e2
    WHERE e2.department_id = d.department_id
);