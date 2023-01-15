CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  additional_name VARCHAR(255),
  address VARCHAR(255),
  mobile_phone VARCHAR(255),
  email VARCHAR(255),
  position VARCHAR(255),
  department INT,
  FOREIGN KEY (department) REFERENCES Departments(department_id)
);

CREATE TABLE Supervisors (
  supervisor_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  employee_id INT,
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

CREATE TABLE Departments (
  department_id INT PRIMARY KEY,
  department_title VARCHAR(255)
);

CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  additional_name VARCHAR(255),
  address VARCHAR(255),
  mobile_phone VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE Accounts (
  account_id INT PRIMARY KEY,
  customer_id INT,
  account_number VARCHAR(255),
  balance DECIMAL,
  currency VARCHAR(255),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
