create table salaries (
emp_no	int primary key,
	salary money not null 
)

 
create table departments (
dept_no	varchar (10) not null,
	depart_name varchar (30) not null 
)
 
 
create table depart_emp (
	emp_no   int ,
dept_no	varchar (10) not null
	
)
 
create table dept_manager (
dept_no	varchar (10) not null,
emp_no	int primary key
)

create table titles (
title_id varchar (10) not null,
	title varchar (30) not null 
)

create table employees (
emp_no int primary key,
emp_title_id varchar (10) not null,
	birth_date date,	
	first_name varchar (30),	
	last_name varchar (30),	
	sex varchar (1),	
	hire_date date 

)

