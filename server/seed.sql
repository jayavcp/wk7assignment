CREATE TABLE IF NOT EXISTS contestants (
  id SERIAL PRIMARY KEY, 
  name TEXT,
  age INT
);

CREATE TABLE IF NOT EXISTS ingredients(
  id SERIAL PRIMARY KEY,
  item TEXT
);

CREATE TABLE IF NOT EXISTS ingredients_junction (
contestant_id INT REFERENCES contestants(id),
ingredient_id INT REFERENCES ingredients(id)
);

INSERT INTO contestants (name, age) VALUES
('Jaya', 30),
('Steve', 32),
('Krish', 28);

INSERT INTO ingredients (item) VALUES 
('Pears'),
('Dark Chocolate'),
('Miso Paste'),
('Hazelnuts'),
('Butter'),
('Flour'),
('Eggs'),
('Ice Cream'),
('Cornflakes');

INSERT INTO ingredients_junction(contestant_id,ingredient_id) VALUES 
(1,1),
(1,2),
(1,3),
(2,4),
(2,5),
(2,6),
(2,7),
(3,8),
(3,9);
