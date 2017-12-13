# Examples for one to one relationships

# Get the users that are admin
SELECT u.name AS 'user', r.name AS 'role'
FROM users u
  join roles r ON r.id = u.role_id
WHERE r.name = 'admin';


# Get all the users without a role

select * from users where role_id is NULL ;


select * from users u
  join roles r ON r.id = u.role_id
where r.name in ('author', 'reviewer')

# List of users with their roles without the ones who doesn't have one
SELECT u.name, r.name
from users u
join roles r ON  r.id = u.role_id;


# left join

SELECT u.name, r.name
from users u -- left table
  left join roles r ON  r.id = u.role_id; -- right table

# right join
SELECT u.name, r.name
from users u
  right join roles r ON  r.id = u.role_id;

