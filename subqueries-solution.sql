USE employees;

-- Find all the employees with the same hire date as employee 101010 using a sub-query.

select * from employees where hire_date = (select hire_date FROM employees  WHERE emp_no = 101010);

-- Find all the titles held by all employees with the first name Aamod.

select * FROM titles t where emp_no in (select emp_no from employees e where first_name = 'Aamod');

-- Find all the current department managers that are female.

select first_name, last_name, e.gender FROM  employees e
WHERE  emp_no IN (select emp_no from dept_manager where to_date >= now());

