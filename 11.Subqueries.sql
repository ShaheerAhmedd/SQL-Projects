-- Subqueries

Select *
from employee_demographics;

Select * 
From employee_salary
where employee_id in 
	(select employee_id
		from employee_salary
        where dept_id=1
	)
;

select first_name, salary, 
(Select avg(salary)
from employee_salary)
from employee_salary
group by first_name, salary;
;


select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;

select gender, avg(`Max(age)`)
from 
(select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender) as Agg_table
group by gender
;

)