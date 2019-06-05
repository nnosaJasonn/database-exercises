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

select concat(first_name,' ', last_name)
from employees
where last_name like 'e%'
  and last_name like '%e';


select datediff(curdate(), hire_date)
from employees
where birth_date like '%12-25'
  and hire_date like '199%'
ORDER BY birth_date, hire_date;

select *
from employees
where last_name like '%q%'
  and last_name not like '%qu%';

# select timestampdiff(YEAR
#          , '2009-05-24'
#          , '2012-04-30'
#          ) AS Years,
#        TIMESTAMPDIFF(MONTH
#          , '2009-05-24'
#                        + INTERVAL TIMESTAMPDIFF(YEAR, '2009-05-24', '2012-04-30') YEAR
#          , '2012-04-30'
#          ) AS Months,
#        TIMESTAMPDIFF(DAY
#          , '2009-05-24'
#                        + INTERVAL TIMESTAMPDIFF(YEAR, '2009-05-24', '2012-04-30') YEAR
#                        + INTERVAL TIMESTAMPDIFF(YEAR, '2009-05-24', '2012-04-30') MONTH
#          , '2012-04-30'
#          ) AS Days
# from employees
# where birth_date like '%12-25'
#   and hire_date like '199%'
# ORDER BY birth_date, hire_date;
select date_format(from_days(datediff(curdate(), hire_date)), '%y years, %m months, and %d days') as 'years, months, days since employment began', datediff(curdate(), hire_date) as 'back into days'
from employees
where birth_date like '%12-25'
  and hire_date like '199%'
ORDER BY birth_date, hire_date;

