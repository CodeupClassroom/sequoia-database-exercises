# Adlister Queries
USE adlister;

# For a given ad, what is the email address of the user that created it?
SELECT users.email FROM users
JOIN ads ON ads.user_id = users.id
WHERE ads.id = 1;

# Get the email address of the user who created the ad with "kilt" in the title
SELECT users.email FROM users
JOIN ads ON ads.user_id = user_id
WHERE ads.title LIKE '%kilt%';

# For a given ad, what category, or categories, does it belong to?
SELECT category FROM categories
JOIN ad_category ON categories.category_id = ad_category.id
WHERE ad_id = 1;

# For the ad with "toyota" in the title, what category, or categories, does it belong to?
SELECT category FROM categories
JOIN ad_category ON categories.id = ad_category.category_id
JOIN ads ON ads.id = ad_category.id
WHERE ads.title like '%toyota%';

# For a given category, show all the ads that are in that category.
SELECT ads.title, ads.description, ads.price
FROM ads
JOIN ad_category ON ads.id = ad_category.id
JOIN categories ON ad_category.category_id = categories.id
WHERE category = 'software';

# For a given user, show all the ads they have posted.
SELECT ads.title, ads.description, ads.price
FROM ads
JOIN users ON user.id = ads.user_id
WHERE users.username = 'Angus';