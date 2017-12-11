USE codeup_test_db;

drop table if exists users;

create table if not exists users (
  id INT unsigned AUTO_INCREMENT not null,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(512) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  middle_name VARCHAR(255),
  last_name VARCHAR(255) NOT NULL,
  created_at DATE,
  modified_at DATE,
  PRIMARY KEY (id)
);