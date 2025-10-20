-- Joins

select *
 from employee_demographics
 ;
 
 select *
 from employee_salary
 ;
 
 -- Inner Joins
 select *
 from employee_demographics
 join employee_salary
	On employee_demographics.employee_id = employee_salary.employee_id -- employee id 2 doesn't exist because it is missing in either one of the datasets
 ;
 
select *
 from employee_demographics AS dem
 join employee_salary AS sal
	On dem.employee_id = sal.employee_id -- same as before
; 

-- Outer Joins

select *
 from employee_demographics AS dem
 Right Outer join employee_salary AS sal
	On dem.employee_id = sal.employee_id
;

-- Self Join

select *
 from employee_salary emp1
 join employee_salary emp2
	on emp1.employee_id + 1= emp2.employee_id
;

select emp1.employee_id as emp_santa, 
emp1.first_name as first_name_santa, 
emp1.last_name as last_name_santa,
emp2.employee_id as emp_santa, 
emp2.first_name as first_name_santa, 
emp2.last_name as last_name_santa 
 from employee_salary emp1
 join employee_salary emp2
	on emp1.employee_id + 1= emp2.employee_id
;

-- Joining multiple tables
Select *
From employee_demographics as dem
Join employee_salary as sal
	on dem.employee_id = sal.employee_id
Inner Join parks_departments pd
	on sal.dept_id = pd.department_id
;

Select * 
from parks_departments
;
