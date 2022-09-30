/*
* DB: Store
* Table: Customers
* Question:
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/

SELECT age, income, country
FROM customers
WHERE (country = 'Japan' OR country = 'Australia')
  AND (age > 50 OR age < 30)
  AND income > 50000
LIMIT 10;


/*
* DB: Store
* Table: Orders
* Question:
* What was our total sales in June of 2004 for orders over 100 dollars?
*/

SELECT sum(netamount)
FROM orders
WHERE orderdate >= '2004-06-01'
  AND orderdate <= '2004-06-30'
  AND netamount > 100;