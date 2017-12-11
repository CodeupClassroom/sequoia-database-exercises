USE codeup_test_db;

drop table if exists quotes;

create table if not exists quotes(
  id int unsigned not null AUTO_INCREMENT,
  first_name VARCHAR(255) not null,
  last_name VARCHAR(255) NOT NULL,
  quote VARCHAR(512) not null,
  PRIMARY KEY (id)
);