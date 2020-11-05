/*
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
*/
 --1
select  Sa.emp_no  as "Employee Number" , 
last_name as "Last Name" , 
first_name as "First Name" ,
sex, 
salary 
from employees Em
left join salaries Sa on Sa.emp_no = Em.emp_no
order by Sa.emp_no
 
 --2
 select  first_name as "FirstName", last_name as "LastName", hire_date as "Date Hired"
 from employees 
 where DATE_PART('year',hire_date ) = '1986'
 order by last_name
 --3
select dm.dept_no as "Department NO", 
  d.depart_name as "Department Name",
  dm.emp_no as "Manager Emp Number",
  es.last_name as "Last Name", es.first_name
  as "First Name"
  from employees es
 join dept_manager dm on es.emp_no = dm.emp_no
 join departments d on d.dept_no = dm.dept_no
 
 --4
 select dm.dept_no as "Department Number", 
 d.depart_name as "Department Name",
 es.emp_no as "Employee Number",
 es.last_name as "Last Name", 
 es.first_name as "First Name"   
 from employees es
 join depart_emp dm on es.emp_no = dm.emp_no
 join departments d on d.dept_no = dm.dept_no
 
 --5
 select first_name as "First Name", last_name as "Last Name", sex 
 from employees es 
 where first_name = 'Hercules' 
 and last_name like 'B%'
 
 --  6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
 
 select es.emp_no as "Employee Number",
 es.last_name as "Last name",
 es.first_name as "First Name",
 d.depart_name as "Department"
 from  employees es   
inner join depart_emp de on de.emp_no = es.emp_no
inner join departments d on d.dept_no = de.dept_no

 where d.depart_name = 'Sales'
  
 --52245
 


 