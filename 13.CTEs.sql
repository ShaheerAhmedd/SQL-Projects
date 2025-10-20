-- CTEs (Common table expressions)

with CTE_Example (EmployeeId, AvgSalary, MaxSalary, MinSalary, CountSalary) AS
(
select gender, avg(salary) Avg_Sal, max(salary) Max_Sal, min(salary) Min_Sal, count(salary) Count_Sal
from employee_demographics dem
join employee_salary sal
	ON dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_Example
;

-- Without CTE example
Select *
from (select gender, avg(salary) Avg_Sal, max(salary) Max_Sal, min(salary) Min_Sal, count(salary) Count_Sal
from employee_demographics dem
join employee_salary sal
	ON dem.employee_id = sal.employee_id
group by gender
) example_subquery
;

with CTE_Example AS
(
select employee_id, gender, birth_date
from employee_demographics dem
where birth_date > '1985-01-01'
),
CTE_Example2 AS
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select*
from CTE_Example
Join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id
;
