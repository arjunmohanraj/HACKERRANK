--Problem: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
select round(sum(lat_n),2), round(sum(long_w),2)
from station;