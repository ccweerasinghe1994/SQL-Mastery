
--     Who over the age of 44 has an income of 100 000 or more?
SELECT firstname, lastname
FROM customers
WHERE (age > 44)
  AND income > 10000
LIMIT 10;

--     Who between the ages of 30 and 50 has an income of less than 50 000?
SELECT firstname, lastname, age, income
FROM customers
WHERE (age >= 30 AND age <= 50)
  AND income < 50000
LIMIT 10;

--     What is the average income between the ages of 20 and 50?

SELECT avg(income)
FROM customers
WHERE age <= 50
  AND age >= 20;

-- How many female customers do we have from the state of Oregon (OR) over 20?
-- Result: 103
SELECT COUNT(firstName)
FROM customers
WHERE gender = 'F' and state = 'OR' and age > 20;
