-- Aggregate functions (functions with memory)
-- count, avg, sum, max, min

SELECT
  count(*),
  first_name,
  last_name
FROM employees
WHERE first_name LIKE '%z%'
GROUP BY first_name, last_name
ORDER BY count(*) DESC;

SELECT sum(salary), to_date -- projection
FROM salaries
WHERE to_date = '9999-01-01' -- current salaries
GROUP BY to_date;


SELECT max(salary), to_date -- projection
FROM salaries
WHERE to_date = '9999-01-01' -- current salaries
GROUP BY to_date;