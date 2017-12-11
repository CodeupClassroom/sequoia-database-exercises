USE codeup_test_db;

# SELECT * from albums where release_date > 1991;
#
# SELECT * from albums where genre = 'disco';
#
# SELECT * from albums where artist = 'The Beatles';

DELETE FROM albums where release_date > 1991;

DELETE FROM albums where genre = 'disco';

DELETE FROM albums where artist = 'The Beatles';