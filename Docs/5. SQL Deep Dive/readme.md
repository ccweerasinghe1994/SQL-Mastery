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

![img](../img/94.png)
![img](../img/95.png)
![img](../img/96.png)
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
![img](../img/110.png)
![img](../img/111.png)
![img](../img/112.png)
![img](../img/113.png)
![img](../img/114.png)
![img](../img/115.png)
![img](../img/116.png)
![img](../img/117.png)
![img](../img/118.png)
![img](../img/119.png)
![img](../img/120.png)
![img](../img/121.png)
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
![img](../img/170.png)
![img](../img/171.png)
![img](../img/172.png)
![img](../img/173.png)
![img](../img/174.png)
![img](../img/175.png)
![img](../img/176.png)
![img](../img/177.png)
![img](../img/178.png)
![img](../img/179.png)
![img](../img/180.png)
![img](../img/181.png)
![img](../img/182.png)
![img](../img/183.png)
![img](../img/184.png)
![img](../img/185.png)
![img](../img/186.png)
![img](../img/187.png)
![img](../img/188.png)
![img](../img/189.png)
![img](../img/190.png)
![img](../img/191.png)
![img](../img/192.png)
![img](../img/193.png)
![img](../img/194.png)
![img](../img/195.png)
![img](../img/196.png)
![img](../img/197.png)
![img](../img/198.png)
![img](../img/199.png)

### 7.1 Aggregate Functions 🐰

## 8. Exercise Aggregate Functions 🐰

## 9. Commenting Your Queries 🐰

### 9.1 Make comments the most important code you write! 🐰

## 10. Common SELECT Mistakes 🐰

## 11. Filtering Data 🐰

## 12. AND and OR 🐰

## 13. Exercise Filtering Data 🐰

## 14. Exercise The Where Clause 🐰

## 15. The NOT Keyword 🐰

## 16. Comparison Operators 🐰

### 16.1 Comparison Operators 🐰

## 17. Exercise Comparison Operators 🐰

## 18. Logical Operators 🐰
