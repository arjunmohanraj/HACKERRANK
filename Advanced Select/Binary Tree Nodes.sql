--Problem : https://www.hackerrank.com/challenges/binary-search-tree-1/problem

select  N,
CASE WHEN P IS NULL THEN 'Root'
     WHEN N IN (SELECT P FROM BST) THEN 'Inner'
     ELSE 'Leaf'
end     
from BST
order by N;
