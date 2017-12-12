USE employees;

SELECT DISTINCT last_name  from employees ORDER BY last_name desc LIMIT  10;

SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
order by birth_date ASC, hire_date DESC
-- limit 10
limit 5 OFFSET 45;

# limit * (offset - 1)
