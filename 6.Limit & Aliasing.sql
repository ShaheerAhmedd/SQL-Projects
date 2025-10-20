 -- Limit & Aliasing
 
 select *
 from employee_demographics
 Order by age desc
 Limit 3,2
 ;
 
 -- Aliasing
 
 select gender, avg (age) as avg_age
 from employee_demographics
 group by gender
 Having avg_age > '40'
 ;