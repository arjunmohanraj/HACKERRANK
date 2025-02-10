--Problem: https://www.hackerrank.com/challenges/occupations/problem

select Min(Doctor),Min(Professor),Min(Singer),Min(Actor)
from
(select rank()over (partition by occupation order by name) rank,
case occupation when 'Doctor' then Name end as Doctor,
case occupation when 'Professor' then Name end as Professor,
case occupation when 'Singer' then Name end as Singer,
case occupation when 'Actor' then Name end as Actor
from occupations)
group by rank
order by rank
;
