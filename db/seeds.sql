USE company_db;

INSERT INTO departments (department)
VALUES
("Engineering"),
("Finance"),
("Legal"),
("Sales");

INSERT INTO roles (title, salary, department_id)
VALUES
("Lead Engineer", 150000, 1),
("Software Engineer", 120000, 1),
("Account Manager", 160000, 2),
("Accountant", 125000, 2),
("Legal Team Lead", 250000, 3),
("Lawyer", 190000, 3),
("Sales Lead", 100000, 4),
("Salesperson", 80000, 4);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
("Carl", "Wheezer", 1, null),
("Jimmy", "Neutron", 2, 1),
("SpongeBob", "SquarePants", 3, null),
("Sandy", "Cheeks", 4, 3),
("Hey", "Arnold", 5, null),
("Bruh", "Moment", 6, 5),
("Obamna", "Soda", 7, null),
("Walter", "White", 8, 7);