use employees;

DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE dept_manager;
DESCRIBE dept_manager;

USE codeup_test_db;

DESCRIBE albums;

ALTER TABLE albums ADD UNIQUE (name, artist);

select * from albums;

INSERT INTO albums (name, artist, release_date, sales, genre) values('Thrillers', 'Peters Jackson', 1990, 23, 'Pop');