CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE department (
  id INT UNSIGNED AUTO_INCREMENT,
  name VARCHAR(30) UNIQUE NOT NULL,
  Primary Key (id)
);

CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT,
  title VARCHAR(40) UNIQUE NOT NULL,
  salary DECIMAL UNSIGNED NOT NULL,
  department_id INT UNSIGNED NOT NULL,
  INDEX dep_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE,
  Primary Key (id)
);

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  manager_id INT UNSIGNED,
  INDEX man_ind (manager_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL,
  Primary Key (id)

);

SELECT * FROM employee_tracker.department;
SELECT * FROM employee_tracker.role;
SELECT * FROM employee_tracker.employee;