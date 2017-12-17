USE adlister;

# insert records into users table
INSERT INTO users (username, email) VALUES
  ('bobbobberson', 'bobby@bob.com'),
  ('janejaneway', 'jane@janeway.net'),
  ('Angus', 'angus@scottland.com');

# insert records into categories table
INSERT INTO categories (category) VALUES
  ('garage sale'), ('vehicle'), ('power tool'), ('service'), ('tool'), ('software'), ('clothing'), ('scottish stuff');

# insert records into ads table
INSERT INTO ads (title, description, price, user_id) VALUES
  ('lawn mower', 'like-new self powered mower', 245.00, 1),
  ('arc welder', 'definitely didn\'t fall off the back of a truck', 100, 1),
  ('build you a website', 'I will build you an awesome website', 3000.00, 2),
  ('mobile app build', 'I will build you both an android and iPhone app for your business', 30000.00, 2),
  ('great kilt', 'lots of wool fabric, 3 inch pleats, comes with a bottle of scotch!', 300, 3),
  ('sgian dubh', 'sgian dubh for your Scottish boot knife!', 50, 3),
  ('1986 Toyota MR2', '200k miles, overhauled engine, after market supercharger ', 4000, 1);

INSERT INTO ad_category (ad_id, category_id) VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 5),
  (3, 4),
  (3, 6),
  (4, 4),
  (4, 6),
  (5, 7),
  (6, 7),
  (5, 8),
  (6, 8),
  (7, 2);



