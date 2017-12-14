-- Subquery: a nested query

-- Similiar tool to a JOIN, both provide query results based on data from
-- multiple tables.

-- Use a subquery when the output data is from a single table, but it is
-- filtered by data from another table.

-- JOIN vs Subquery: In general, use the rule of thumb above, but many queries
-- can be expressed as either a subquery or with a join, use whichever makes
-- your specific query more clear / easier to express.

-- A very complex example
-- https://crates.io/crates/rocket
-- https://github.com/rust-lang/crates.io/blob/82ac341240d02892b2f865b2f5a075d36471ee24/src/krate/krate_reverse_dependencies.sql

------------------------------------------------------------------------
-- Codeup records example
-- I need a list of names and github usernames for a given cohort (team)
------------------------------------------------------------------------
USE instructor_tools;

describe users;
describe teams;

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
    github_username
FROM users
WHERE team_id = x;

-- Combine the above to get a subquery

------------------------------------------------------------------------------

-- Curriculum Example

USE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;
