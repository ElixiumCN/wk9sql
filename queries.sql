-- [] create queries that fulfill all CRUD operations on both tables.

--	[Movies]
--		Create
INSERT INTO movies VALUES ('Goldeneye3', 'Keanu Reeves', 4);
INSERT INTO movies (title, actor) VALUES ('Goldeneye2', 'Keanu Reeves', 3);
--		Read
SELECT * FROM movies;
--		Update
UPDATE movies SET title = 'updated title', actor = 'updated actor' WHERE title = 'Spiderman';
--		Delete
DELETE FROM movies WHERE title = 'Batman';
--	[Products]



-- USE buvkq4cpw2btxpefflpq;
-- CREATE TABLE movies (title VARCHAR(255) NOT NULL UNIQUE, actor VARCHAR(255)	DEFAULT 'Not specified');

-- afternoon stuff
CREATE TABLE products
(
id INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
productName VARCHAR(255) NOT NULL UNIQUE,
price INT DEFAULT 0
);

INSERT INTO products (productName, price) VALUES('MacBook', 30);


-- SELECT * FROM products;
-- SELECT * FROM products WHERE productName = 'Something';
-- SELECT COUNT(*) FROM products
SELECT COUNT(*) FROM products WHERE price < 500;
-- the number of products with price below 500
SELECT COUNT(*) AS price_less_than FROM products WHERE price < 500;
-- show price_less_than in results grid

-- ^

SELECT AVG(price) AS average_price FROM products;
SELECT SUM(price) AS price_to_buy_everything FROM products;

SELECT productName, price FROM products WHERE productName LIKE 'Macbook%'
 
-- above is afternoon stuff

-- alter table
ALTER TABLE movies ADD id INT UNIQUE PRIMARY KEY AUTO_INCREMENT;


