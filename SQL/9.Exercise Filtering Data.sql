SELECT count(*)
FROM customers
WHERE (state = 'OR' OR state = 'NY')
  AND (gender = 'F');