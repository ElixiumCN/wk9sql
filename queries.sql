--	[x] create queries that fulfill all CRUD operations on both tables.
--	[] Build SELECT queries with a mix of aggregate functions and declarative properties.
	(count(), min/max, WHERE, ORDER BY).
--	DB_selection
-- USE buvkq4cpw2btxpefflpq;
--		Movies_Table
--	_CREATE
INSERT INTO movies VALUES ('Goldeneye3', 'Keanu Reeves', 4);
INSERT INTO movies (title, actor) VALUES ('Goldeneye2', 'Keanu Reeves', 3);
CREATE TABLE movies (title VARCHAR(255) NOT NULL UNIQUE, actor VARCHAR(255)	DEFAULT 'Not specified');
--	_READ
SELECT * FROM movies;
--	_UPDATE
UPDATE movies SET title = 'updated title', actor = 'updated actor' WHERE title = 'Spiderman';
--	_DELETE
DELETE FROM movies WHERE title = 'Batman';
--		Products_Table
--	_CREATE
CREATE TABLE products
(
id INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
productName VARCHAR(255) NOT NULL UNIQUE,
price INT DEFAULT 0
);

INSERT INTO products (productName, price) VALUES('MacBook', 30);
INSERT INTO products (productName, price) VALUES('New MacBook', 30);

--	_READ
--	[] Build SELECT queries with a mix of aggregate functions and declarative properties.
--	(count(), min/max, WHERE, ORDER BY).
    
SELECT COUNT(*) AS price_less_than FROM products WHERE price < 500;
--	show price_less_than in the results grid.
    

SELECT * FROM products;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM products WHERE price < 500;
--	the number of products with price below 500

SELECT AVG(price) AS average_price FROM products;
SELECT SUM(price) AS price_to_buy_everything FROM products;
SELECT productName, price FROM products WHERE productName LIKE '%Macbook%';
--	List all products with MacBook anywhere in the product name.
--	_UPDATE
UPDATE products SET productName = 'MacBookAir 2022', price = '100' WHERE productName = 'MacBookAir';
--	_DELETE
DELETE FROM products WHERE productName = 'MacBook';
DELETE FROM products WHERE productName LIKE = '%MacBook%';
--	Not working: Delete products with the word string MacBook anwyehere within the product name.
--	_EXTRAS
--	TAB_to_make_a_white_comment
ALTER TABLE movies ADD id INT UNIQUE PRIMARY KEY AUTO_INCREMENT;