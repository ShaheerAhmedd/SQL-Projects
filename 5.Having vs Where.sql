-- Having vs Where

SELECT gender, avg (age)
from employee_demographics
group by gender
Having avg(age) > '40'
;

SELECT occupation, avg (salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000
;