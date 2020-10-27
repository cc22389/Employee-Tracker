Insert into department (name) 
values 
('Fresh Production'), 
('Custom Orders'), 
('Delivery Service'), 
('Administration');

insert into role (title, salary, department_id) 
values 
('Cashier', 30000, 1), 
('Cake Decorator', 40000, 2), 
('Driver', 30000, 3), 
('Owner', 60000, 4);

insert into employee (first_name, last_name, role_id, manager_id) 
values 
('Lucas', 'Morgan', 1, NULL), 
('Harry', 'Morgan', 3, NULL), 
('Barbara', 'Morgan', 2, NULL), 
('Casey', 'Morgan', 4, 4);