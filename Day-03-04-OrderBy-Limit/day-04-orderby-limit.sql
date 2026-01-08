# 11 - Employees ordered by department then salary
SELECT * FROM employee ORDER BY department_id,salary;

# 12 - Orders sorted by amount DESC
SELECT * FROM orders ORDER BY amount DESC;

# 13 - Customers ordered by city
SELECT * FROM customers ORDER BY city;

# 14 - Highest order amount
SELECT amount AS Highest_Order_Amount FROM orders ORDER BY amount DESC LIMIT 1;

# 15 - Lowest order amount
SELECT amount AS Lowest_Order_Amount FROM orders ORDER BY amount LIMIT 1;

# 16 - First 3 orders
SELECT * FROM orders ORDER BY order_date LIMIT 3;

# 17 - Orders ordered by date
SELECT * FROM orders ORDER BY order_date;

# 18 - Orders ordered by customer_id
SELECT * FROM orders ORDER BY customer_id;

# 19 - Employees ordered by manager_id
SELECT * FROM employee ORDER BY manager_id;

# 20 - Salary-wise ranking simulation
SELECT name, salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS Salary_Ranking FROM employee;