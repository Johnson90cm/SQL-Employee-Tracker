-- drop DB and create new DB
DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

-- use employees DB
USE employees;

-- employee tables
CREATE TABLE employee ();

-- department tables
CREATE TABLE department ();

-- department values
VALUES
    ('Management'),
    ('Chemistry'),
    ('Software Engineering'),
    ('Mechanical Engineering');

-- role values
VALUES
    ('CEO', 1000000, 1),
    ('Project Director', 750000, 1),
    ('VP: Engineering', 500000, 2),
    ('VP: Chemistry', 500000, 3),
    ('Junior Software Engineer', 100000, 2),
    ('Senior Software Engineer', 250000, 2),
    ('Junior Mechanical Engineer', 100000, 2),
    ('Senior Mechanical Engineer', 250000, 2),
    ('Junior Chemist', 100000, 3),
    ('Senior Chemist', 250000, 3);

-- employee values
VALUES
    ('Ronald', 'Firbank', 1, 1),
    ('Virginia', 'Woolf', 1, 1),
    ('Piers', 'Gaveston', 1, 0),
    ('Charles', 'LeRoi', 2, 1),
    ('Katherine', 'Mansfield', 2, 1),
    ('Dora', 'Carrington', 3, 0),
    ('Edward', 'Bellamy', 3, 0),
    ('Montague', 'Summers', 3, 1),
    ('Octavia', 'Butler', 3, 1),
    ('Unica', 'Zurn', NULL, 1);