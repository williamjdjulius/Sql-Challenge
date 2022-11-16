create table departments (dept_no varchar (10) not null primary key,
										  dept_name varchar (255) not null);

Select *
From departments;


create table dept_emp (emp_no integer not null,
					  dept_no varchar (255) not null);

Select *
From dept_emp;


create table dept_managers (dept_no varchar (255) not null,
						   emp_no integer not null);


Select*
From dept_managers;


create table employee (emp_no integer not null,
					  emp_title_id varchar (255) not null,
					  birthdate date not null,
					  first_name varchar (255) not null,
					  last_name varchar (255) not null,
					  sex varchar (4) not null,
					  hire_date date not null); 

Select *
From employee;


create table salaries (emp_no integer not null,
					  salary integer not null);

Select *
From salaries;