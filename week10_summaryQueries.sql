################################### Question 1
USE bike;
SELECT ROUND(AVG(quantity),0) AS "Stock Average"
FROM stock;

################################### Question 2
USE bike;
SELECT DISTINCT(product_name)
FROM stock JOIN product
	ON stock.product_id = product.product_id
WHERE quantity = 0
ORDER by product_name;

################################### Question 3
USE bike;
SELECT category_name, COUNT(category_name) as "instock"
FROM category JOIN product
	ON category.category_id = product.category_id
 JOIN stock
	ON product.product_id = stock.product_id
 JOIN store
	ON stock.store_id = store.store_id
WHERE store_name = "Baldwin Bikes" AND store.store_id = 2
GROUP BY category_name
ORDER BY COUNT(quantity);

################################## Question 4
USE employees;
SELECT COUNT(emp_no) AS "Number of Employees"
FROM employees;

################################# Question 5
USE employees;
SELECT dept_name, FORMAT(AVG(salary), 2) AS "Average Salary"
FROM departments 
    JOIN dept_emp
		ON departments.dept_no = dept_emp.dept_no
	JOIN salaries
		ON salaries.emp_no = dept_emp.emp_no
GROUP BY dept_name
HAVING AVG(salary) < 60000;

################################## Question 6
USE employees;
SELECT dept_name, COUNT(gender) AS "Number of Females"
FROM departments
	JOIN dept_emp
		ON departments.dept_no = dept_emp.dept_no
	JOIN employees
		ON employees.emp_no = dept_emp.emp_no
WHERE gender = "F"
GROUP BY dept_name
ORDER BY dept_name;