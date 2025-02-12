--Problem: https://www.hackerrank.com/challenges/weather-observation-station-14/problem
select round(max(LAT_N),4)
from station
where lat_n < 137.2345;