-- Stored Procedures

Create procedure large_salaries()
select *
from employee_salary
where salary >= 50000;

Create procedure low_salaries()
select *
from employee_salary
where salary < 50000;

call large_salaries();
call low_salaries();

DELIMITER $$
Create procedure Salary_Classifaction()
Begin
select *
from employee_salary
where salary >= 50000;
select *
from employee_salary 
where salary < 50000;
end $$
DELIMITER ;

call Salary_Classifaction();

-- To show salary for a specific employee id
DELIMITER $$
Create procedure Large_Salaries2(ID_Param INT)
Begin
select *
from employee_salary
where employee_id = ID_Param;
end $$
DELIMITER ;

Call Large_Salaries2(1);