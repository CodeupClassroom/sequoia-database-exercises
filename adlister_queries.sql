# Adlister Queries
USE adlister;

# For a given ad, what is the email address of the user that created it?
SELECT users.email from users
join ads on ads.user_id = users.id
where ads.id = 1;

# For a given ad, what category, or categories, does it belong to?

# For a given category, show all the ads that are in that category.

# For a given user, show all the ads they have posted.
