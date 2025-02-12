--PROBLEM: https://www.hackerrank.com/challenges/sql-projects/problem
WITH ProjectGroups AS (
    SELECT Start_Date,
           End_Date,
           Start_Date - INTERVAL '1' DAY * ROW_NUMBER() OVER (ORDER BY Start_Date) AS project_group
    FROM Projects
),
GroupedProjects AS (
    SELECT MIN(Start_Date) AS project_start, MAX(End_Date) AS project_end
    FROM ProjectGroups
    GROUP BY project_group
)
SELECT project_start, project_end
FROM GroupedProjects
ORDER BY (project_end - project_start), project_start;