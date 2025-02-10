--Problem: https://www.hackerrank.com/challenges/the-pads/problem

select name|| '(' || substr(occupation,1,1)||')'
from occupations
order by name;

Select 'There are a total of ' || count(occupation) ||' '||lower(occupation)||'s.'
from occupations 
group by occupation
order by count(occupation),occupation;