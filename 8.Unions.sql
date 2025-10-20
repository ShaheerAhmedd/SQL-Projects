-- Unions

Select first_name, last_name
from employee_demographics
Union 
select first_name, last_name
from employee_salary
;

Select first_name, last_name, 'OLD Man' as label
from employee_demographics
where age > 40 and gender = 'Male'
union
Select first_name, last_name, 'OLD Lady' as label
from employee_demographics
where age > 40
Union 
select first_name, last_name, 'Highly Paid' as label
from employee_salary
where salary > 70000
;