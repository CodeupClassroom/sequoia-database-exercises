USE codeup_test_db;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(512),
  name VARCHAR(512),
  release_date INT(4),
  sales FLOAT(5, 2),
  genre CHAR()
);