USE codeup_test_db;

# SELECT *
# FROM albums;
#
#
# SELECT *
# FROM albums
# WHERE release_date < 1980;
#
# SELECT * FROM albums where artist = 'Michael Jackson';


UPDATE albums SET sales = sales * 10;

UPDATE albums
    SET  release_date = release_date - 100
WHERE release_date < 1980;

UPDATE albums
    set artist = 'Peter Jackson'
where artist = 'Michael Jackson';