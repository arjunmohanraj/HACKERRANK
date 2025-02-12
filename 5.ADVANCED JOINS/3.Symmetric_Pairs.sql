--PROBLEM: https://www.hackerrank.com/challenges/symmetric-pairs/problem
select f1.x x_val, f1.y y_val
from functions f1, functions f2
where f1.x<>f2.x
and   f1.y<>f2.y
and   f1.x=f2.y
and   f2.x=f1.y
and   f1.x <= f1.y
union
select f3.x x_val, f3.y y_val
from functions f3
where f3.x=f3.y
group by f3.x,f3.y
having count(f3.x)>1
order by x_val asc ;

--------alternate way---------

SELECT X,
       Y
FROM FUNCTIONS F1
WHERE EXISTS
    (SELECT *
     FROM FUNCTIONS F2
     WHERE F2.Y = F1.X
       AND F2.X = F1.Y
       AND F2.X > F1.X)
  AND (X != Y)
UNION
SELECT X,
       Y
FROM FUNCTIONS F1
WHERE X = Y
  AND (
         (SELECT COUNT(*)
          FROM FUNCTIONS
          WHERE X = F1.X
            AND Y = F1.X) > 1)
ORDER BY X;