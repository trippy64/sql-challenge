 create table employees (
emp_no int primary key,
emp_title_id varchar (10) not null,
	birth_date date,	
	first_name varchar (30),	
	last_name varchar (30),	
	sex varchar (1),	
	hire_date date 

);
--select * from employees
create table salaries (
	
 	emp_no	int,
	salary money not null  
);
--select * from salaries
 
 
create table departments (
	
dept_no	varchar (10) not null,
	depart_name varchar (30) not null  
 
);
 select * from departments
 
create table depart_emp (
	emp_no   int ,
dept_no	varchar (10) not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

 select * from depart_emp
 
 
create table dept_manager (
dept_no	varchar (10) not null,
emp_no	int primary key
);
select * from dept_manager

create table titles (
title_id varchar (10) not null,
	title varchar (30) not null 
)
;
select * from titles
