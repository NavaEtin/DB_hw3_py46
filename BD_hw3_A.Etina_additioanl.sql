create table if not exists departnets (
	deprtment_id serial primary key,
	department_name varchar (60) not null unique
)

create table if not exists employees (
	empoloyee_id serial primary key,
	empolyee_name varchar (100) not null unique,
	departament_id references departaments (departament_id)
)

create table if not exists heads (
	head_id serial primary key,
	head_name varchar (100) not null unique,
	employee_id int2 references employees (employee_id),
	departament_id int2 references departaments (departament_id)
)