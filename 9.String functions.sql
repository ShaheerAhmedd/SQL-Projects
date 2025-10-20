-- String functions

select length('skyfall');

select upper(first_name), length(first_name)
from employee_demographics
order by 2;

select upper('sky');
select lower('sky');

select rtrim('    Sky    ');

select first_name, 
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics;

select first_name, replace (first_name, 'a', 'z')
from employee_demographics;

select locate('x','alexander');

select first_name, locate('An',first_name)
From employee_demographics
;

select first_name, last_name,
concat(first_name,' ',last_name) AS full_name
From employee_demographics
;