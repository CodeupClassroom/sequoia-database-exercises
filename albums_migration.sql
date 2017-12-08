USE codeup_test_db;

-- Create albums table --
-- "Migrations" are files that create, modify, or delete tables --
CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(512),
  name VARCHAR(512),
  release_date INT(4),
  sales FLOAT(5, 2),
  genre CHAR()
);
