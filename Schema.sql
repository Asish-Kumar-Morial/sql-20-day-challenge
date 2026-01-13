-- ============================================
-- Database Schema for SQL Interview Practice
-- Repo: sql-patterns-in-20-days
-- ============================================

-- 1. Create database
CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

-- 2. Drop tables if already exist (clean run)
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;

-- 3. Create Department table
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- 4. Create Employee table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    manager_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- 5. Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

-- 6. Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- ============================================
-- Sample Data
-- ============================================

-- Departments
INSERT INTO Department VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Finance'),
(40, 'Sales'),
(50, 'Marketing'),
(60, 'Operations'),
(70, 'Support'),
(80, 'R&D'),
(90, 'Admin'),
(100, 'Legal'),
(110, 'Procurement'),
(120, 'Logistics'),
(130, 'Training'),
(140, 'Quality'),
(150, 'Security'),
(160, 'Design'),
(170, 'Product'),
(180, 'Analytics'),
(190, 'Compliance'),
(200, 'Customer Success');

-- Employees
INSERT INTO Employee VALUES
(1, 'Alice', 10, 80000, NULL, '2019-01-10'),
(2, 'Bob', 10, 60000, 1, '2020-03-15'),
(3, 'Charlie', 20, 50000, NULL, '2018-07-20'),
(4, 'David', 30, 70000, 3, '2021-05-25'),
(5, 'Eva', 10, 90000, 1, '2017-09-01'),
(6, 'Frank', 40, 55000, 4, '2019-11-12'),
(7, 'Grace', 40, 65000, 4, '2020-02-18'),
(8, 'Helen', 50, 72000, NULL, '2018-06-30'),
(9, 'Ian', 50, 68000, 8, '2019-09-14'),
(10, 'Jack', 60, 48000, NULL, '2021-01-20'),
(11, 'Kathy', 60, 52000, 10, '2022-03-10'),
(12, 'Leo', 70, 40000, NULL, '2020-07-22'),
(13, 'Mona', 70, 45000, 12, '2021-08-16'),
(14, 'Nina', 80, 95000, NULL, '2017-04-05'),
(15, 'Oscar', 80, 88000, 14, '2018-12-11'),
(16, 'Paul', 90, 50000, NULL, '2019-06-01'),
(17, 'Queen', 100, 78000, NULL, '2020-10-09'),
(18, 'Robert', 110, 62000, NULL, '2021-02-27'),
(19, 'Sophia', 120, 54000, NULL, '2022-05-15'),
(20, 'Tom', 130, 46000, NULL, '2023-01-08');

-- Customers
INSERT INTO Customers VALUES
(1, 'Rahul', 'Mumbai'),
(2, 'Anita', 'Delhi'),
(3, 'Suresh', 'Bangalore'),
(4, 'Priya', 'Mumbai'),
(5, 'Amit', 'Delhi'),
(6, 'Neha', 'Chennai'),
(7, 'Vikas', 'Pune'),
(8, 'Rohit', 'Bangalore'),
(9, 'Sneha', 'Hyderabad'),
(10, 'Karan', 'Mumbai'),
(11, 'Meena', 'Chennai'),
(12, 'Arjun', 'Delhi'),
(13, 'Pooja', 'Pune'),
(14, 'Sanjay', 'Hyderabad'),
(15, 'Ritu', 'Bangalore'),
(16, 'Deepak', 'Mumbai'),
(17, 'Anil', 'Delhi'),
(18, 'Swati', 'Chennai'),
(19, 'Nikhil', 'Pune'),
(20, 'Divya', 'Hyderabad');

-- Orders
INSERT INTO Orders VALUES
(101, 1, 5000, '2024-01-10'),
(102, 1, 12000, '2024-02-15'),
(103, 2, 8000, '2024-02-20'),
(104, 3, 15000, '2024-03-01'),
(105, 4, 22000, '2024-03-10'),
(106, 5, 18000, '2024-01-25'),
(107, 6, 7000, '2024-02-05'),
(108, 7, 9500, '2024-03-12'),
(109, 8, 30000, '2024-03-18'),
(110, 9, 11000, '2024-01-30'),
(111, 10, 25000, '2024-02-08'),
(112, 11, 14000, '2024-03-05'),
(113, 12, 9000, '2024-01-14'),
(114, 13, 16000, '2024-02-22'),
(115, 14, 21000, '2024-03-25'),
(116, 15, 17000, '2024-01-19'),
(117, 16, 28000, '2024-02-27'),
(118, 17, 13000, '2024-03-03'),
(119, 18, 6000, '2024-01-09'),
(120, 19, 19500, '2024-03-14');
