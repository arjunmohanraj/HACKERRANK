--Problem: https://www.hackerrank.com/challenges/the-report/problem
select s.name names,g.grade,s.marks
from students s,grades g
where s.marks between g.min_mark and g.max_mark
and g.grade>=8
union
select 'NULL' names,g.grade,s.marks
from students s,grades g
where s.marks between g.min_mark and g.max_mark
and g.grade<8
Order by grade desc,names asc;