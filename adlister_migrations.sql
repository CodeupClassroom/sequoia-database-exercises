use adlister;

DROP TABLE IF EXISTS ad_category;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;

# Create the users table
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

# Create the ads table
CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  description VARCHAR(2048),
  price DECIMAL(10, 2),
  user_id INT UNSIGNED NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

# Create the categories table
CREATE TABLE categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  category VARCHAR(512) UNIQUE,
  PRIMARY KEY (id)
);

# Create the ad_category table
CREATE TABLE ad_category (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ad_id INT UNSIGNED NOT NULL,
  category_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (id)
);
