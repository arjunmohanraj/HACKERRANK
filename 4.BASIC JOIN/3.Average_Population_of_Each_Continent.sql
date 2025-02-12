--Problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
select b.continent, floor(avg(a.population))
from city a, country b
where a.countrycode=b.code
group by b.continent;