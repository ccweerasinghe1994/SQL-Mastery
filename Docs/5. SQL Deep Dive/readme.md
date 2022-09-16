# [SQL Mastery HOME PAGE 🏠](../../README.md)

## 1. Query Along 🐰

Although we provide exercises throughout the sections, we also recommend that you follow along by also writing out what you see on the screen and trying the SQL commands yourself that we show you. The best way to learn is not by watching us do it, but by practicing the commands yourself. So Query Along!

## 2. Starting With Query 🐰

![img](../img/74.png)
![img](../img/75.png)
![img](../img/76.png)

## 3. Exercise Simple Queries 🐰

![img](../img/77.png)

```SQL
select * from employees;
```

**output**

| emp_no | birth_date | first_name | last_name | gender | hire_date  |
| :----- | :--------- | :--------- | :-------- | :----- | :--------- |
| 10001  | 1953-09-02 | Georgi     | Facello   | M      | 1986-06-26 |
| 10002  | 1964-06-02 | Bezalel    | Simmel    | F      | 1985-11-21 |

![img](../img/78.png)

```SQL
select count(*) from departments;
```

**output**

| count |
| :---- |
| 9     |

![img](../img/79.png)

```SQL
select count(*) AS "Salaray Incremenets"
from salaries
where emp_no = 10001;
```

**output**

| Salaray Incremenets |
| :------------------ |
| 17                  |

![img](../img/80.png)

```SQL
SELECT title
FROM titles
WHERE emp_no = 10006;
```

**output**

| title           |
| :-------------- |
| Senior Engineer |

## 4. Exercise Renaming Columns 🐰

![img](../img/81.png)
![img](../img/82.png)

```SQL
select emp_no AS "Employee #", birth_date AS "Birthday", first_name AS "First Name"
from employees;
```

**output**

| Employee # | Birthday   | First Name |
| :--------- | :--------- | :--------- |
| 10001      | 1953-09-02 | Georgi     |
| 10002      | 1964-06-02 | Bezalel    |
| 10003      | 1959-12-03 | Parto      |
| 10004      | 1954-05-01 | Chirstian  |
| 10005      | 1955-01-21 | Kyoichi    |
| 10006      | 1953-04-20 | Anneke     |
| 10007      | 1957-05-23 | Tzvetan    |
| 10008      | 1958-02-19 | Saniya     |
| 10009      | 1952-04-19 | Sumant     |
| 10010      | 1963-06-01 | Duangkaew  |

## 5. Concat Function 🐰

![img](../img/83.png)

![img](../img/84.png)

```SQL
SELECT concat(first_name, ' ', last_name) AS "Full Name"
FROM "Employees".public.employees;
```

**output**

| Full Name          |
| :----------------- |
| Georgi Facello     |
| Bezalel Simmel     |
| Parto Bamford      |
| Chirstian Koblick  |
| Kyoichi Maliniak   |
| Anneke Preusig     |
| Tzvetan Zielinski  |
| Saniya Kalloufi    |
| Sumant Peac        |
| Duangkaew Piveteau |

## 6. What Is A Function In SQL 🐰

![img](../img/85.png)
![img](../img/86.png)
![img](../img/87.png)
![img](../img/88.png)
![img](../img/89.png)
![img](../img/90.png)
![img](../img/91.png)

## 7. Aggregate Functions 🐰

![img](../img/92.png)

```SQL
SELECT count(*)
FROM employees;
```

**output**

| count  |
| :----- |
| 300024 |

![img](../img/93.png)

```SQL
SELECT max(salary)
FROM salaries;
```

**output**

| max    |
| :----- |
| 158220 |

---

```SQL
SELECT sum(salary)
FROM salaries;
```

**output**

| sum          |
| :----------- |
| 181480757419 |

### 7.1 Aggregate Functions 🐰

[postgres 14 aggregate function documentation](https://www.postgresql.org/docs/14/functions-aggregate.html)

## 8. Exercise Aggregate Functions 🐰

Time to sharpen those skills, the following exercises are there to help you flex those SQL muscles you've just built!

In the previous videos we learned a lot about aggregate functions, and how they can help us answer complex questions!

Reminder

Exercises are grouped according to the database the should be executed against, as always our format is <DatabaseName>/<Table> which indicates against which database and table you should be working to get accurate results.

**Question**
What database should I use for these exercises?

```SQL
SELECT avg(salary)
FROM salaries;
```

**output**

| avg                |
| :----------------- |
| 63810.744836143706 |

---

**Question**
What year was the youngest person born in the company?

```SQL
SELECT max(birth_date)
FROM employees;
```

**output**

| max        |
| :--------- |
| 1965-02-01 |

---

**Question**
How many towns are there in france?

```SQL
SELECT count(*)
FROM "France".public.towns;
```

## **output**

| count |
| :---- |
| 36684 |

---

**Question**
How many official languages are there?

```SQL
SELECT count(*)
FROM "World".public.countrylanguage
WHERE isofficial = true;
```

## **output**

| count |
| :---- |
| 238   |

---

**Question**
What is the average life expectancy in the world?

```SQL
SELECT avg(lifeexpectancy)
FROM country;
```

## **output**

| avg               |
| :---------------- |
| 66.48603611164265 |

---

**Question**
What is the average population for cities in the netherlands?

```SQL
SELECT avg(population)
FROM city
WHERE countrycode = 'NLD';
```

## **output**

| avg       |
| :-------- |
| 185001.75 |

---

## 9. Commenting Your Queries 🐰

![img](../img/94.png)
![img](../img/95.png)
![img](../img/96.png)

```SQL
SELECT first_name, last_name
FROM "Employees".public.employees
/*
FILTER ON FIRST NAME AND LAST NAME TO LIMIT THE AMOUNT OF DATA RETURNED
AND FOCUS THE FILTERING ON A SINGLE PERSON
*/
WHERE first_name = 'Mayumi'
  AND last_name = 'Schueller';
```

**output**

| first_name | last_name |
| :--------- | :-------- |
| Mayumi     | Schueller |

### 9.1 Make comments the most important code you write! 🐰

[How to make comments the most important ‘code’ you write](https://www.red-gate.com/simple-talk/databases/oracle-databases/how-to-make-comments-the-most-important-code-you-write/)

## 10. Common SELECT Mistakes 🐰

![img](../img/97.png)
![img](../img/98.png)
![img](../img/99.png)
![img](../img/100.png)
![img](../img/101.png)
![img](../img/102.png)
![img](../img/103.png)
![img](../img/104.png)
![img](../img/105.png)
![img](../img/106.png)
![img](../img/107.png)
![img](../img/108.png)
![img](../img/109.png)

## 11. Filtering Data 🐰

![img](../img/110.png)
![img](../img/111.png)
![img](../img/112.png)
**Question**

![img](../img/113.png)

```SQL
SELECT first_name
FROM employees
WHERE gender = 'F' LIMIT 10;
```

## **output**

| first_name |
| :--------- |
| Bezalel    |
| Anneke     |
| Tzvetan    |
| Sumant     |
| Duangkaew  |
| Mary       |
| Cristinel  |
| Kazuhide   |
| Bojan      |
| Suzette    |

## 12. AND and OR 🐰

![img](../img/114.png)
![img](../img/115.png)
![img](../img/116.png)
![img](../img/117.png)
**Question**

```SQL
SELECT first_name, last_name, gender, hire_date
FROM employees
WHERE (first_name = 'Georgi'
    AND last_name = 'Facello' AND gender = 'M' AND hire_date = '1986-06-26')
   OR (first_name = 'Bezalel' AND
       last_name = 'Simmel');
```

## **output**

| first_name | last_name | gender | hire_date  |
| :--------- | :-------- | :----- | :--------- |
| Georgi     | Facello   | M      | 1986-06-26 |
| Bezalel    | Simmel    | F      | 1985-11-21 |

## 13. Exercise Filtering Data 🐰

**Question**

![img](../img/118.png)

```SQL
SELECT count(*)
FROM customers
WHERE (state = 'OR' OR state = 'NY')
  AND (gender = 'F');
```

| count |
| :---- |
| 200   |

## 14. Exercise The Where Clause 🐰

[quiz](https://www.w3schools.com/sql/exercise.asp?filename=exercise_where1)

## 15. The NOT Keyword 🐰

![img](../img/119.png)
![img](../img/120.png)

**Question**

![img](../img/121.png)

```SQL
SELECT count(*)
FROM customers
WHERE NOT age = 55;
```

## **output**

| count |
| :---- |
| 19716 |

## 16. Comparison Operators 🐰

![img](../img/122.png)
![img](../img/123.png)
![img](../img/124.png)
![img](../img/125.png)
![img](../img/126.png)
![img](../img/127.png)
![img](../img/128.png)
![img](../img/129.png)
![img](../img/130.png)
![img](../img/131.png)

### 16.1 Comparison Operators 🐰

[link](https://www.postgresql.org/docs/12/functions-comparison.html)

## 17. Exercise Comparison Operators 🐰

**Question**
Who over the age of 44 has an income of 100 000 or more?

```SQL
SELECT firstname, lastname
FROM customers
WHERE (age > 44)
  AND income > 10000
LIMIT 10;
```

## **output**

| firstname | lastname   |
| :-------- | :--------- |
| VKUUXF    | ITHOMQJNYX |
| HQNMZH    | UNUKXHJVXB |
| JTNRNB    | LYYSHTQJRE |
| FXDZBW    | BAXPEEKXVJ |
| WVZTXZ    | RMEVXCQGQF |
| LIWLAI    | PVGRMMHSEQ |
| NCGWRC    | CJOPRHUHIE |
| XQVVMI    | KRPGDBCQJH |
| AGUQVI    | FFPCRUSFKI |
| SIQANV    | QQNKJSURDA |

---

**Question**
Who between the ages of 30 and 50 has an income of less than 50 000?

```SQL
SELECT firstname, lastname, age, income
FROM customers
WHERE (age >= 30 AND age <= 50)
  AND income < 50000
LIMIT 10;
```

## **output**

| firstname | lastname   | age | income |
| :-------- | :--------- | :-- | :----- |
| XMFYXD    | WQLQHUHLFE | 44  | 40000  |
| FUOHXX    | WMOEHWMMWM | 44  | 40000  |
| HEJLWR    | UKDLCPZCWE | 48  | 20000  |
| UQBLKL    | PVOFURBZMJ | 31  | 40000  |
| ONGTCS    | UDVEXRMKNH | 39  | 40000  |
| AJEMKC    | ZPSLCCVCPI | 47  | 20000  |
| VAWCEX    | AGDCPNPNJZ | 49  | 40000  |
| ZTBECR    | ZZVIFZFDSR | 34  | 40000  |
| CGPUTV    | THGPQDWHTM | 35  | 20000  |
| LADSQO    | JKUESHADGZ | 45  | 20000  |

---

**Question**
What is the average income between the ages of 20 and 50?

```SQL
SELECT avg(income)
FROM customers
WHERE age <= 50
  AND age >= 20;
```

**output**
| avg |
| :--- |
| 59361.925908612832 |

---

**Question**
How many female customers do we have from the state of Oregon (OR) over 20?

```SQL
SELECT COUNT(firstName)
FROM customers
WHERE gender = 'F' and state = 'OR' and age > 20;
```

**output**
| count |
| :--- |
| 103 |

## 18. Logical Operators 🐰

![img](../img/132.png)
![img](../img/133.png)
![img](../img/134.png)
![img](../img/135.png)
![img](../img/136.png)
![img](../img/137.png)
![img](../img/138.png)
![img](../img/139.png)
![img](../img/140.png)
![img](../img/141.png)
![img](../img/142.png)
![img](../img/143.png)

## 19. 19. Operator Precedence

![img](../img/144.png)
![img](../img/145.png)
![img](../img/146.png)
![img](../img/147.png)
![img](../img/148.png)
![img](../img/149.png)
![img](../img/150.png)
![img](../img/151.png)
![img](../img/152.png)
![img](../img/153.png)

### 19.1 Operator Precedence

[Operator Precedence](https://www.postgresql.org/docs/14/sql-syntax-lexical.html#SQL-PRECEDENCE)

### 19.2 Expression Evaluation Rules

[Expression Evaluation Rules](https://www.postgresql.org/docs/14/sql-expressions.html#SYNTAX-EXPRESS-EVAL)

## 20. Operator Precedence 2

![img](../img/154.png)
![img](../img/155.png)
![img](../img/156.png)
![img](../img/157.png)
![img](../img/158.png)
![img](../img/159.png)
![img](../img/160.png)
![img](../img/161.png)
![img](../img/162.png)
![img](../img/163.png)
![img](../img/164.png)
![img](../img/165.png)
![img](../img/166.png)
![img](../img/167.png)
![img](../img/168.png)
![img](../img/169.png)

### 21. Exercise Operator Precedence

---

**Question**
Select people either under 30 or over 50 with an income above 50000
Include people that are 50
that are from either Japan or Australia

```SQL
SELECT age, income, country
FROM customers
WHERE (country = 'Japan' OR country = 'Australia')
  AND (age > 50 OR age < 30)
  AND income > 50000
LIMIT 10;

```

**output**
| age | income | country |
| :--- | :--- | :--- |
| 52 | 80000 | Australia |
| 86 | 100000 | Japan |
| 66 | 60000 | Australia |
| 22 | 80000 | Australia |
| 55 | 100000 | Japan |
| 56 | 100000 | Japan |
| 88 | 100000 | Japan |
| 56 | 60000 | Australia |
| 59 | 60000 | Australia |
| 81 | 80000 | Australia |

---

**Question**
What was our total sales in June of 2004 for orders over 100 dollars?

```SQL
SELECT sum(netamount)
FROM orders
WHERE orderdate >= '2004-06-01'
  AND orderdate <= '2004-06-30'
  AND netamount > 100;
```

**output**
| sum |
| :--- |
| 188060.29 |

## 22. Checking For NULL Values

![img](../img/170.png)
![img](../img/171.png)
![img](../img/172.png)
![img](../img/173.png)
![img](../img/174.png)
![img](../img/175.png)
![img](../img/176.png)
![img](../img/177.png)

## 23. IS Keyword

![img](../img/178.png)
![img](../img/179.png)
![img](../img/180.png)
![img](../img/181.png)
![img](../img/182.png)
![img](../img/183.png)
![img](../img/184.png)
![img](../img/185.png)
![img](../img/186.png)

## 24. NULL Coalescing

![img](../img/187.png)
![img](../img/188.png)
![img](../img/189.png)
![img](../img/190.png)
![img](../img/191.png)

## 25. Exercise Null Value Coalescing

**Question**
Assuming a students minimum age for the class is 15, what is the average age of a student?

```SQL
SELECT avg(coalesce(age, 15))
from "Student";
```

**output**
| avg |
| :--- |
| 30.4000000000000000 |

---

**Question**
Replace all empty first or last names with a default?

```SQL
SELECT coalesce(name, 'fallback'),coalesce(lastname, 'lastname')
from "Student";
```

**output**

## 26. 3 Valued Logic

![img](../img2/1.png)
![img](../img2/2.png)
![img](../img2/3.png)
![img](../img2/4.png)
![img](../img2/5.png)
![img](../img2/6.png)
![img](../img2/7.png)
![img](../img2/8.png)
![img](../img2/9.png)
![img](../img2/10.png)
![img](../img2/11.png)
![img](../img2/12.png)
![img](../img2/13.png)
![img](../img2/14.png)

## 27. Exercise 3 Valued Logic

**Question**
adjust the following query to display the null values as "No Address"

```SQL
SELECT coalesce(address2, 'No Address') AS "Address"
FROM customers
limit 5;
```

**output**
| Address |
| :--- |
| No Address |
| No Address |
| No Address |
| No Address |
| No Address |

---

**Question**
Fix the following query to apply proper 3VL

```SQL
SELECT *
FROM customers
WHERE address2 IS NOT null;

```

---

**Question**
Fix the following query to apply proper 3VL

```SQL
SELECT coalesce(lastName, 'Empty'), age
from customers
where age IS null;
```

## 28. BETWEEN + AND

![img](../img2/15.png)
![img](../img2/16.png)
![img](../img2/17.png)
![img](../img2/18.png)
![img](../img2/19.png)
![img](../img2/20.png)

## 29. IN Keyword

![img](../img2/21.png)
![img](../img2/22.png)
![img](../img2/23.png)
![img](../img2/24.png)
![img](../img2/25.png)
![img](../img2/26.png)
![img](../img2/27.png)
![img](../img2/28.png)
![img](../img2/29.png)


## 30. Exercise IN Keyword

## 31. LIKE

## 32. Exercise Like Keyword

## 33. Dates And Timezones

## 33.1 UTC is enough right

## 34. Setting Up Timezones

## 35. How Do We Format Date And Time

## 36. Timestamps

## 37. Date Functions

## 38. Date Difference And Casting

## 39. Age Calculation

## 40. Extracting Information

## 41. Intervals

## 42. Exercise Date and Timestamp

## 43. DISTINCT

## 44. Exercise Distinct Keyword

## 45. Sorting Data

## 46. Multi Table SELECT

## 47. Inner Join

## 48. Self Join

## 49. Outer Join

## 50. Less Common Joins

## 51. Inner-Join Exercises

## 52. USING Keyword
