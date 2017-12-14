-- roles with a count of each, ordered by number of users with the given role
SELECT
    r.name AS role_name,
    COUNT(*) AS number_of_users_with_the_role
FROM roles r
JOIN users u ON u.role_id = r.id
ORDER BY number_of_users_with_the_role DESC;


