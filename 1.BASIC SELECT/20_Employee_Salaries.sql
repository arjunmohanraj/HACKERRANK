--Problem: https://www.hackerrank.com/challenges/salary-of-employees/problem
select Name
from employee
where salary>2000
and months<10
order by employee_id asc;