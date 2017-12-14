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