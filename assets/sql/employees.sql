DROP DATABASE IF EXISTS employees;

CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE role (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL UNSIGNED NOT NULL,
    department_id INT UNSIGNED NOT NULL,
    INDEX dep_ind (department_id),
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT UNSIGNED NOT NULL,
    INDEX role_ind (role_id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    manager_id INT UNSIGNED,
    INDEX man_ind (manager_id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE
    SET
        NULL
);

use employees;

INSERT INTO
    department (name)
VALUES
    ('Operations'),
    ('Analystics'),
    ('Marketing'),
    ('Executive');

INSERT INTO
    role (title, salary, department_id)
VALUES
    ('PRESIDENT', 11000000, 1),
    ('CEO', 4000000, 1),
    ('BOARD OF DIRECTORS', 15000000, 2),
    ('GENERAL MANAGER', 8000000, 2),
    ('ASSISTANT', 7000000, 3),
    ('TECHNITION', 3000000, 3),
    ('ENGINEER', 45000000, 4),
    ('ASSOCIATE', 25000000, 4);

INSERT INTO
    employee (first_name, last_name, role_id, manager_id)
VALUES
    ('Bilbo', 'Baggins', 1, NULL),
    ('Frodo', 'Baggins', 2, 1),
    ('Gandalf', 'The Grey', 1, NULL),
    ('Pippin', 'Took', 4, 3),
    ('Samwise', 'Gamgee', 5, NULL),
    ('Gary', 'Peyton', 6, 5),
    ('Merry', 'Brandybuck', 7, NULL),
    ('Rosie', 'Cotton', 8, 7);