--Problem: https://www.hackerrank.com/challenges/challenges/problem

WITH ChallengeCounts AS (
    SELECT hacker_id, COUNT(challenge_id) AS total_challenges
    FROM Challenges
    GROUP BY hacker_id
),
FilteredCounts AS (
    SELECT total_challenges
    FROM ChallengeCounts
    GROUP BY total_challenges
    HAVING COUNT(hacker_id) = 1 OR total_challenges = (SELECT MAX(total_challenges) FROM ChallengeCounts)
)
SELECT h.hacker_id, h.name, cc.total_challenges
FROM ChallengeCounts cc
JOIN Hackers h ON cc.hacker_id = h.hacker_id
WHERE cc.total_challenges IN (SELECT total_challenges FROM FilteredCounts)
ORDER BY cc.total_challenges DESC, h.hacker_id;