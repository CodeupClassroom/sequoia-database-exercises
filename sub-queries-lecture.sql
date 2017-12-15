USE instructor_tools;

describe users;
describe teams;

select * from teams where name = 'Sequoia';

-- look at the shape of the data
SELECT
  name,
  slack
FROM teams;

SELECT
  u.name,
  u.github_username
FROM users AS u
  JOIN teams AS t ON u.team_id = t.id
WHERE t.name = 'Sequoia';

-- What if we could find the team_id ahead of time?
SELECT id
FROM teams
WHERE name = 'Sequoia';

-- Then use this id...
SELECT
  name,
  github_username,
  team_id
FROM users
WHERE team_id in (SELECT id FROM  teams WHERE name in ('Sequoia', 'Redwood'))
ORDER BY team_id DESC;


## Extra example



describe titles;

# Get all the employees that are female with their titles.

select e.first_name, e.last_name, e.gender, t.title
from employees e
  join titles t on t.emp_no = e.emp_no
where e.gender = 'F';

# Not caring about the title we can use a subquery to get all the employees that are female and have at least a title

select e.first_name, e.last_name, e.gender
from employees e
where e.gender = 'F' and e.emp_no in (select emp_no from titles);