SELECT first_name, last_name
FROM "Employees".public.employees
/*
FILTER ON FIRST NAME AND LAST NAME TO LIMIT THE AMOUNT OF DATA RETURNED
AND FOCUS THE FILTERING ON A SINGLE PERSON
*/
WHERE first_name = 'Mayumi'
  AND last_name = 'Schueller';