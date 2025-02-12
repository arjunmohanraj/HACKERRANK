--Problem: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
SELECT RPAD('*', LEVEL*2,' *')          
FROM DUAL 
CONNECT BY LEVEL <=20 
ORDER BY 1 DESC;