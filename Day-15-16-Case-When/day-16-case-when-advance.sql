# 11 - City classification
SELECT customer_name,city,
CASE
	WHEN city IN ('Mumbai','Bangalore','Delhi') THEN 'Metro'
    ELSE 'Non-Metro'
END AS City_Classification
FROM customers;

# 12 - Salary tax slab
SELECT name,
CASE
	WHEN salary >= 80000 THEN '30% Tax'
    WHEN salary BETWEEN 50000 AND 79999 THEN '20% Tax'
	ELSE '10% Tax'
END AS Tax_Slab
FROM employee;

# 13 - Manager vs Employee label
SELECT DISTINCT e.emp_id, e.name,
CASE 
	WHEN m.emp_id IS NOT NULL THEN 'Manager'
    ELSE 'Employee'
END AS Role_Type
FROM employee e
LEFT JOIN employee m
ON e.emp_id = m.manager_id;

# 14 - Order month name
SELECT order_id,
CASE MONTH(order_date)
	WHEN 1 THEN 'January'
	WHEN 2 THEN 'February'
	WHEN 3 THEN 'March'
	WHEN 4 THEN 'April'
	WHEN 5 THEN 'May'
	WHEN 6 THEN 'June'
	WHEN 7 THEN 'July'
	WHEN 8 THEN 'Augest'
	WHEN 9 THEN 'Spetember'
	WHEN 10 THEN 'October'
	WHEN 11 THEN 'November'
	WHEN 12 THEN 'December'
END AS Order_Month
FROM orders;

# 15 - Weekend vs weekday orders
SELECT order_id,
CASE 
	WHEN DAYOFWEEK(order_date) IN (1,7) THEN 'Weekend'
    ELSE 'Weekday'
END AS Order_Day_Type
FROM orders;

# 16 - Salary increment logic
SELECT name,
CASE
	WHEN salary >= 80000 THEN salary*1.20
    WHEN salary BETWEEN 50000 AND 79999 THEN salary*1.15
    ELSE salary*1.10
END AS Incremented_Salary
FROM employee;

# 17 - Employee retention risk
SELECT name,
CASE
	WHEN salary >= 80000 THEN 'Low Risk' 
    WHEN salary BETWEEN 50000 AND 79999 THEN 'Medium Risk'
    ELSE 'High Risk'
END AS Retention_Risk
FROM employee;

# 18 - Performance grade
SELECT name,
CASE
	WHEN salary >= 80000 THEN 'A' 
    WHEN salary BETWEEN 50000 AND 79999 THEN 'B'
    ELSE 'C'
END AS Performance_Grade
FROM employee;

# 19 - Customer loyalty category
SELECT c.customer_name,
CASE
	WHEN COUNT(o.order_id) >= 2 THEN 'Loyal Customer'
    ELSE 'New Customer'
END AS Loyalty_Category
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

# 20 - Salary comparison flag
SELECT e.name,
CASE
	WHEN e.salary > 
		(
			SELECT AVG(salary)
			FROM employee
			WHERE department_id = e.department_id
        )
	THEN 'Above Average'
    ELSE 'Below Average'
END AS Salary_Comparison
FROM employee e;