CREATE TABLE employees(
	id serial NOT NULL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(50),
	hiring_date date DEFAULT '2023-01-01',
	salary NUMERIC(10, 2),
	devices_number int
);

CREATE TABLE departments(
	id serial NOT NULL PRIMARY KEY,
	name varchar(50),
	code char(3),
	description text
);

CREATE TABLE issues(
	id serial PRIMARY KEY UNIQUE,
	description varchar(150),
	date date,
	start timestamp
);