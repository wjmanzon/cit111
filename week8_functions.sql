############################### Question 1
use magazine;
SELECT magazineName, round(magazinePrice - (magazinePrice * .03), 2) AS '3% off'
FROM magazine;

############################### Question 2
use magazine;
SELECT subscriberKey, ROUND(DATEDIFF("2020-12-20", subscriptionStartDate)/365)
FROM subscription;

############################### Question 3
use magazine;
SELECT subscriptionStartDate, subscriptionLength, DATE_FORMAT(DATE_ADD(subscriptionStartDate, INTERVAL subscriptionLength MONTH), '%M %e, %Y')
FROM subscription;


############################### Question 4
USE bike;
SELECT LEFT(product_name, LOCATE(' - 20', product_name)) AS 'Product Name without Year'
FROM product
WHERE NOT(product_name LIKE ' - 20%')
ORDER BY product_id
LIMIT 14;

############################## Question 5
USE bike;
SELECT product_name, CONCAT('$',FORMAT(list_price / 3, 2)) AS 'One of 3 payments'
FROM product
WHERE product_name LIKE '%2019';