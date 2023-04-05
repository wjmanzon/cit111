USE art_gallery;

################## query 1
INSERT INTO artist VALUES(
	DEFAULT, 'Johannes', NULL, 'Vermeer', 1632, 1674, 'Netherlands', 'n'
    );

################### query 2
SELECT fname, mname, lname, dob, dod, country, local_artist
FROM artist
ORDER BY lname;

#################### query 3
UPDATE artist
SET dod = 1675
WHERE artist_id = 9;

#################### query 4
DELETE FROM artist
WHERE artist_id = 9;

#################### BIKE database
USE bike;

SELECT * FROM customer;

#################### query 5
SELECT first_name, last_name, phone
FROM customer
WHERE city = 'Houston' AND state = 'TX';

#################### query 6
SELECT product_name, list_price, list_price - 500 AS 'Discount Price'
FROM product
WHERE list_price >= 5000
ORDER BY list_price DESC;

################### query 7
SELECT first_name, last_name, email
FROM staff
WHERE store_id <> 1;

################### query 8
SELECT product_name, model_year, list_price
FROM product
WHERE product_name LIKE '%Spider%';

################### query 9
SELECT product_name, list_price
FROM product
WHERE list_price BETWEEN 500 AND 550
ORDER BY list_price;

################### query 10
SELECT * FROM customer
WHERE phone IS NOT NULL AND (city LIKE '%ach%' OR city LIKE '%och%') OR last_name = 'William'
LIMIT 5;