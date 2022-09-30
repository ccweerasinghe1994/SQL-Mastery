/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT count(*)
FROM employees
WHERE age(birth_date::DATE) > INTERVAL '61 years';


-- alternative
SELECT count(birth_date) FROM employees
WHERE birth_date < now() - interval '61 years'; -- 61 years before the current date

SELECT count(*) FROM employees
WHERE (
   EXTRACT (YEAR FROM AGE(birth_date))
) > 60;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/


SELECT count(*)
FROM employees
WHERE EXTRACT(MONTH FROM hire_date::date) = 2;

SELECT count(emp_no) FROM employees
where EXTRACT (MONTH FROM hire_date) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT count(*)
FROM employees
WHERE EXTRACT(MONTH FROM birth_date) = 11;

SELECT COUNT(emp_no) FROM employees
WHERE EXTRACT (MONTH FROM birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT MAX(age(birth_date))
FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/
SELECT COUNT(orderid)
FROM orders
WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';

SELECT count(*)
FROM orders WHERE to_char(orderdate::date,'YYYY-MM') = '2004-01';

