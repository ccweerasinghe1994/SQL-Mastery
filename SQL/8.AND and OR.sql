SELECT first_name, last_name, gender, hire_date
FROM employees
WHERE (first_name = 'Georgi'
    AND last_name = 'Facello' AND gender = 'M' AND hire_date = '1986-06-26')
   OR (first_name = 'Bezalel' AND
       last_name = 'Simmel');