# 1 - Salary category (High/Medium/Low)
SELECT name AS Employee_Name,
CASE
	WHEN salary >= 80000 THEN 'HIGH'
    WHEN salary BETWEEN 50000 AND 79999 THEN 'MEDIUM'
    ELSE 'LOW'
END AS Salary_Category
FROM employee;

# 2 - Employee status based on salary
SELECT name AS Employee_name,
CASE 
	WHEN salary >= 70000 THEN 'SENIOR EMPLOYEE'
    ELSE 'JUNIOR EMPLOYEE'
END AS Employee_Status
FROM employee;

# 3 - Orders amount category
SELECT order_id ,
CASE 
	WHEN amount >= 20000 THEN 'High Value'
    WHEN amount BETWEEN 10000 AND 19999 THEN 'Medium Value'
    ELSE 'Low Value'
END AS Order_Category
FROM orders;

# 4 - Bonus eligibility
SELECT name AS Employee_Name,
CASE
	WHEN salary >= 60000 THEN 'eligible'
    ELSE 'not eligible'
END AS Bonus_Eligibility
FROM employee;

# 5 - Experience level from hire date
SELECT name AS Employee_Name,
CASE 
	WHEN TIMESTAMPDIFF(YEAR,hire_date,CURDATE()) >= 8 THEN 'Highly_Experienced'
    WHEN TIMESTAMPDIFF(YEAR,hire_date,CURDATE()) BETWEEN 4 AND 7 THEN 'Experienced'
    ELSE 'Fresher'
END AS Experience_level
FROM employee;

# 6 - Salary hike percentage
SELECT name AS Employee_Name,
CASE
	WHEN salary >= 80000 THEN '5% Hike'
    WHEN salary BETWEEN 50000 AND 79999 THEN '10% Hike'
    ELSE '15% Hike'
END AS Salary_Hike
FROM employee;

# 7 - Customer type (Premium/Regular)
SELECT c.customer_name AS Customer_Name,
CASE
	WHEN SUM(o.amount) >= 20000 THEN 'Premimum Customer'
    ELSE 'Regular Customer'
END AS Customer_Type
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

# 8 - Department size category
SELECT d.department_name AS Department_Name,
CASE 
	WHEN COUNT(e.emp_id) >= 5 THEN 'LARGE'
    WHEN COUNT(e.emp_id) BETWEEN 2 AND 4 THEN 'MEDIUM'
    ELSE 'SMALL'
END AS Department_Size
FROM department d
LEFT JOIN employee e
ON d.department_id = e.department_id
GROUP BY d.department_name;

# 9 - Order priority
SELECT order_id,
CASE
	WHEN amount >= 20000 THEN 'High Priority'
    ELSE 'Low Priority'
END AS Order_Priority
FROM orders;

# 10 - Employee seniority
SELECT name AS Employee_Name,
CASE
	WHEN TIMESTAMPDIFF(YEAR,hire_date,CURDATE()) >= 5 THEN 'Senior'
    ELSE 'Junior'
END AS Employee_Seniority
FROM employee;
