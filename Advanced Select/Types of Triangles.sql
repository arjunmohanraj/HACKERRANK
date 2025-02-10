--Problem : https://www.hackerrank.com/challenges/what-type-of-triangle/problem

select case
when A>=(B+C) OR B>=(C+A) OR C>=(A+B) then 'Not A Triangle'
when A=B and A=C then 'Equilateral'
when A=B OR B=C OR A=C then 'Isosceles'
else 'Scalene'
end case
from Triangles;