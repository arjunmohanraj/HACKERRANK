--Problem: https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
select sum(population)
from city
where lower(district)='california';