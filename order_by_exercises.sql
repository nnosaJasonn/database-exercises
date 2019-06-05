use employees;

select *
from employees
where first_name in ('irena', 'vidya', 'maya')
ORDER BY last_name, first_name;

select *
from employees
where (first_name = 'irena'
  or first_name = 'vidya'
  or first_name = 'maya');



select *
from employees
where last_name like 'e%'
ORDER BY emp_no desc;

select *
from employees
where hire_date like '199%';


select *
from employees
where birth_date like '%12-25';

select *
from employees
where last_name like '%q%';


select *
from employees
where (first_name = 'irena'
  or first_name = 'vidya'
  or first_name = 'maya')
  and (gender = 'M');

select *
from employees
where last_name like 'e%'
   or last_name like '%e';

select *
from employees
where last_name like 'e%'
  and last_name like '%e';


select *
from employees
where birth_date like '%12-25'
  and hire_date like '199%'
ORDER BY birth_date, hire_date desc;

select *
from employees
where last_name like '%q%'
  and last_name not like '%qu%';

