--PROBLEM: https://www.hackerrank.com/challenges/placements/problem
SELECT s1.Name
FROM Students s1
JOIN Friends f ON s1.ID = f.ID
JOIN Packages p1 ON s1.ID = p1.ID
JOIN Packages p2 ON f.Friend_ID = p2.ID
WHERE p2.Salary > p1.Salary
ORDER BY p2.Salary;