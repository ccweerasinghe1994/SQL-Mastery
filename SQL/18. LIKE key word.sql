-- employees who's names are starting with G and End with r
SELECT *
FROM employees
WHERE first_name ILIKE 'g%ger'
LIMIT 10;

