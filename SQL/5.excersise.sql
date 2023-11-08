-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
--


-- Question 1: What is the average salary for the company?
-- Table: Salaries

SELECT avg(salary)
FROM salaries;

| avg |
| :--- |
| 63810.744836143706 |

-- Question 2: What year was the youngest person born in the company?
-- Table: employees

SELECT max(birth_date)
FROM employees;

| max |
| :--- |
| 1965-02-01 |


-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
--

-- Question 1: How many towns are there in france?
-- Table: Towns

SELECT count(*)
FROM "France".public.towns;

| count |
| :--- |
| 36684 |

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
--

-- Question 1: How many official languages are there?
-- Table: countrylanguage

FROM "World".public.countrylanguage WHERE isofficial = true;

| count |
| :--- |
| 984 |

-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT avg(lifeexpectancy)
FROM country;

| avg |
| :--- |
| 66.48603611164265 |

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

SELECT avg(population)
FROM city
WHERE countrycode = 'NLD';

| avg |
| :--- |
| 185001.75 |
