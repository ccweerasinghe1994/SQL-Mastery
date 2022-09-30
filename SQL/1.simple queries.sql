select *
from employees
limit 2;

select count(*)
from departments;

select count(*) AS "Salaray Incremenets"
from salaries
where emp_no = 10001;

SELECT title
FROM titles
WHERE emp_no = 10006;
