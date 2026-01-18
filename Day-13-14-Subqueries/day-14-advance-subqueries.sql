# 11 - Customers with no orders
SELECT * FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders);

# 12 - Employees working in department 'IT'
SELECT * FROM employee WHERE department_id = (SELECT department_id FROM department WHERE department_name = 'IT');

# 13 - Employees earning more than department avg
SELECT * FROM employee e WHERE salary > (SELECT AVG(salary) FROM employee WHERE department_id = e.department_id);

# 14 - Employees hired after company avg hire date
SELECT * FROM employee WHERE hire_date > (SELECT AVG(hire_date) FROM employee );

# 15 - Employees earning min salary per department
SELECT * FROM employee e WHERE salary = (SELECT MIN(salary) FROM employee WHERE department_id = e.department_id);

# 16 - Employees earning max salary per department
SELECT * FROM employee e WHERE salary = (SELECT MAX(salary) FROM employee WHERE department_id = e.department_id);

# 17 - Departments with more employees than avg
SELECT department_id
FROM employee
GROUP BY department_id
HAVING COUNT(*) >
(
    SELECT AVG(emp_count)
    FROM (
        SELECT COUNT(*) AS emp_count
        FROM employee
        GROUP BY department_id
    ) t
);

# 18 - Employees whose salary is in top 10%
SELECT *
FROM employee
WHERE salary >=
(
    SELECT salary
    FROM employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET (SELECT FLOOR(COUNT(*) * 0.1) FROM employee)
);

# 19 - Customers with orders > overall avg
SELECT DISTINCT c.customer_name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.amount >
(
    SELECT AVG(amount)
    FROM orders
);

# 20 - Employees working under highest paid manager
SELECT *
FROM employee
WHERE manager_id =
(
    SELECT emp_id
    FROM employee
    WHERE salary =
    (
        SELECT MAX(salary)
        FROM employee
        WHERE emp_id IN (SELECT DISTINCT manager_id FROM employee WHERE manager_id IS NOT NULL)
    )
);
