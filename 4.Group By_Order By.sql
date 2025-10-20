-- Group By

select *
from employee_demographics;

SELECT gender, avg(age), MAX(age), min(age), count(age)
from employee_demographics
group by gender
;

-- Order By
SELECT *
from employee_demographics
order by gender, age 
;