################################ QUESTION 1
USE v_art;
SELECT artfile
FROM artwork
WHERE period = 'Impressionism';

################################ QUESTION 2
USE v_art;
SELECT artfile
FROM artwork JOIN artwork_keyword
	ON artwork.artwork_id = artwork_keyword.artwork_id
 JOIN keyword
    ON artwork_keyword.keyword_id = keyword.keyword_id
WHERE keyword LIKE '%flower%';

################################ QUESTION 3
USE v_art;
SELECT fname, lname, title
FROM artist LEFT JOIN artwork
	ON artist.artist_id = artwork.artist_id;

################################ QUESTION 4
USE  magazine;
SELECT magazineName, subscriberLastName, subscriberFirstName
FROM subscriber RIGHT JOIN subscription
	ON subscriber.subscriberKey = subscription.subscriberKey
 JOIN magazine
	ON magazine.magazineKey = subscription.magazineKey
ORDER BY magazineName;

################################# QUESTION 5
USE magazine;
SELECT magazineName
FROM subscriber JOIN subscription
	ON subscriber.subscriberKey = subscription.subscriberKey
 JOIN magazine
	ON magazine.magazineKey = subscription.magazineKey
WHERE subscriberFirstName = "Samantha" AND subscriberLastName = "Sanders";

################################# QUESTION 6
USE employees;
SELECT first_name, last_name
FROM departments JOIN dept_emp
	ON departments.dept_no = dept_emp.dept_no
 JOIN employees
	ON employees.emp_no = dept_emp.emp_no
WHERE dept_name = "Customer Service"
ORDER BY last_name
LIMIT 5;

################################## QUESTION 7
USE employees;
SELECT first_name, last_name, dept_name, salary, salaries.from_date
FROM employees JOIN salaries
	ON employees.emp_no = salaries.emp_no
 JOIN dept_emp
    ON employees.emp_no = dept_emp.emp_no
 JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE first_name ="Berni" AND last_name = "Genin"
ORDER BY salary DESC, from_date DESC
LIMIT 1;






