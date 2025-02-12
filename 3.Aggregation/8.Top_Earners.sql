--Problem: https://www.hackerrank.com/challenges/earnings-of-employees/problem
select * from (select salary * months , count(*)
from employee
group by salary * months
order by salary * months desc)
where rownum=1;