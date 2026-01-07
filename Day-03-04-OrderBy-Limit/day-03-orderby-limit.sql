# 1 - Employees ordered by salary ASC
SELECT * FROM employee ORDER BY salary;

# 2 - Employees ordered by salary DESC
SELECT * FROM employee ORDER BY salary DESC;

# 3 - Employees ordered by name
SELECT * FROM employee ORDER BY name;

# 4 - Employees ordered by hire_date
SELECT * FROM employee ORDER BY hire_date;

# 5 - Top 3 highest paid employees
SELECT * FROM employee ORDER BY salary DESC LIMIT 3;

# 6 - Top 3 lowest paid employees
SELECT * FROM employee ORDER BY salary LIMIT 3;

# 7 - Latest 4 hired employees
SELECT * FROM employee ORDER BY hire_date DESC LIMIT 4;

# 8 - First 3 employees
SELECT * FROM employee ORDER BY hire_date LIMIT 3;

# 9 - Second highest salary
SELECT * FROM employee ORDER BY salary DESC LIMIT 1 OFFSET 1;

# 10 - Third highest salary
SELECT * FROM employee ORDER BY salary DESC LIMIT 1 OFFSET 2;