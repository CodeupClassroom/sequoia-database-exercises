use employees;

describe dept_manager;
select * from departments;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name
) as 'Department Manager'
from employees e
    join dept_manager de ON  de.emp_no = e.emp_no
    join departments d ON  d.dept_no = de.dept_no
WHERE de.to_date >= curdate()
ORDER BY d.dept_name;

-- Find the name of all departments currently managed by women.

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name
) as 'Department Manager'
from employees e
    join dept_manager dm on dm.emp_no = e.emp_no
    join departments d on d.dept_no = dm.dept_no
where e.gender = 'F' and  dm.to_date >= curdate()
ORDER BY d.dept_name;

-- Find the current titles of employees currently working in the Customer Service department.
DESCRIBE titles;
DESCRIBE departments;

select t.title, count(e.emp_no)
from titles t
    join employees e on e.emp_no = t.emp_no
    join dept_emp de ON  de.emp_no = e.emp_no
    join departments d on d.dept_no = de.dept_no
WHERE  t.to_date >= curdate() AND d.dept_name = 'Customer Service' AND de.to_date >= curdate()
GROUP BY t.title;

-- Find the current salary of all current managers.

DESCRIBE salaries;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name
) AS 'Department Manager', s.salary
from employees e
    join dept_manager dm on dm.emp_no = e.emp_no
    join salaries s on s.emp_no = e.emp_no
    join departments d on d.dept_no = dm.dept_no
where dm.to_date >= curdate() and s.to_date >= curdate()
ORDER BY d.dept_name;


SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

