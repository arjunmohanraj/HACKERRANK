--Problem: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
select avg(population)
from city
where lower(district)='california';