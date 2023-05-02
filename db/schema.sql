DROP DATABASE IF EXISTS company_db;

CREATE DATABASE company_db;

USE company_db;

CREATE TABLE departments (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    department VARCHAR(30)
);

CREATE TABLE roles (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
    ON DELETE CASCADE
);

CREATE TABLE employees (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id)
    REFERENCES roles(id)
    ON DELETE CASCADE,
    manager_id INT,    
    FOREIGN KEY (manager_id)
    REFERENCES employees(id)
    ON DELETE CASCADE
);