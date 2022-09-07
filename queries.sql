--	What is the total number of employees?
SELECT COUNT(*) FROM current_job_detail;
SELECT COUNT(*) FROM employee_detail;
SELECT COUNT(employee_id) AS total_amount_of_employees FROM employee_detail;
--	Who is the highest earning employee and what is their job title?
SELECT name, job_title, salary AS highest_salary
FROM employee_detail
INNER JOIN current_job_detail ON employee_detail.employee_id = current_job_detail.employee_id
WHERE salary = (SELECT MAX(salary) FROM current_job_detail);
--	How many senior developers are there?
SELECT COUNT(job_title) AS Total_Senior_Developers FROM current_job_detail WHERE job_title = 'Senior Developer';
--	How many developers are in each wage bracket?
SELECT
COUNT(CASE WHEN salary BETWEEN 30000 AND 37000 THEN 1 END) AS salary_30k_to_37k,
COUNT(CASE WHEN salary BETWEEN 37001 AND 44000 THEN 1 END) AS salary_37k_to_44k,
COUNT(CASE WHEN salary BETWEEN 44001 AND 50000 THEN 1 END) AS salary_44k_to_50k
FROM current_job_detail WHERE job_title = 'Developer';
--	Who is the only employee who isn-t a developer and what is their salary?
SELECT name, job_title, salary AS salary
FROM employee_detail
INNER JOIN current_job_detail ON employee_detail.employee_id = current_job_detail.employee_id
WHERE job_title != 'Developer' AND job_title != 'Lead Developer';



SELECT * FROM jobs_history;
SELECT * FROM employee_detail;
SELECT * FROM current_job_detail;

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
DELETE FROM products WHERE productName LIKE '%MacBook%';
--	Not working: Delete products with the word string MacBook anwyehere within the product name.
--	Have to disable safe mode to delete multiple records I see.
--	_EXTRAS
--	TAB_to_make_a_white_comment
ALTER TABLE movies ADD id INT UNIQUE PRIMARY KEY AUTO_INCREMENT;



--	CASE
WHEN GENDER - 'M' THEN 'Male';
WHEN GENDER - 'F' THEN 'Female';
WHEN GENDER - 'U' THEN 'Non-Binary';
END AS gender_identity
FROM employee_detail

--	Inner Join

SELECT employee_id, job_title, os
FROM current_job_detail
INNER JOIN laptop_detail
ON current_job_detail.laptop_id = laptop_detail.laptop_id

--	Left Join

SELECT employee_detail.employee_id, name, job_title
FROM employee_detail
LEFT JOIN jobs_history
ON employee_detail.employee_id = jobs_history.employee_id
ORDER BY employee_detail.name;

--	Right Join
SELECT employee_detail.employee_id, name, job_title
FROM employee_detail
RIGHT JOIN jobs_history
ON employee_detail.employee_id = jobs_history.employee_id
ORDER BY employee_detail.name;

--	Cross Join
--	lists data from multiple tables.
SELECT laptop_id, employee_id
FROM laptop_detail
CROSS JOIN employee_detail





















