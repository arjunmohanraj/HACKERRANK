--Problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
select * from 
(select city,length(city) from station order by length(city) asc, city asc)--min length city
where rownum=1
union
select * from 
(select city,length(city) from station order by length(city) desc, city asc)--min length city
where rownum=1;