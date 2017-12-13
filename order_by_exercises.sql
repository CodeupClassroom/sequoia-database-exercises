USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC , first_name DESC ;


# Find all employees whose last name starts with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
order by emp_no DESC ;

# Find all employees hired in the 90s and born on Christmas
SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
order by birth_date ASC, hire_date DESC;
