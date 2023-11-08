SELECT extract(DAY FROM '1992/11/22'::date) AS DAY;

| day |
| :--- |
| 22 |


SELECT extract(MONTH FROM '1992/11/22'::date) AS MONTH;

| month |
| :--- |
| 11 |

SELECT extract(YEAR FROM '1992/11/22'::date) AS YEAR;

| year |
| :--- |
| 1992 |


SELECT date_trunc('YEAR','1992/11/22'::date) AS YEAR;
SELECT date_trunc('MONTH','1992/11/22'::date) AS MONTH;
SELECT date_trunc('DAY',CURRENT_TIMESTAMP) AS DATE;
