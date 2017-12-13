USE employees;


SELECT
  concat(e.emp_no, ' - ', e.last_name, ', ', e.first_name) full_name,
  e.birth_date                                             DOB
FROM employees e
LIMIT 10;

# We use aliases to remove ambiguity from column names
SELECT e.emp_no, s.emp_no
FROM employees e, salaries s;
