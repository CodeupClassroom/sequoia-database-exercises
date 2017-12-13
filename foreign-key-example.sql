# quotes
# id, author_id (FK), content
# 1, 1, mysql is cool
# 2, 1, i love joins
#
# authors
# id (PK) name
# 1 fer

create table authors (
  id int not null AUTO_INCREMENT,
  name VARCHAR(255),
  PRIMARY KEY (id)
);

create table quotes (
  id int not null AUTO_INCREMENT,
  author_id int NOT NULL,
  content VARCHAR(255),
  PRIMARY KEY (id),
  FOREIGN KEY (author_id) REFERENCES authors(id)
);
