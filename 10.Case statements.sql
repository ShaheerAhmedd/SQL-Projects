-- Case statements

Select first_name, last_name, age,
case
	when age <= 30 then 'young'
    when age between 30 and 50 then 'adult' 
    when age > 50 then 'on death door'
    end
from employee_demographics;

-- Pay increase and Bonus
-- < 50K = 5%
-- > 50K = 10%
-- Finance = 20%

select first_name, last_name, salary,
case
	when salary <= 50000 then salary*1.05
	when salary > 50000 then salary* 1.1
	end as New_Salary,
case
	when dept_id = 6 then salary*0.2
end as bonus
from employee_salary
;

