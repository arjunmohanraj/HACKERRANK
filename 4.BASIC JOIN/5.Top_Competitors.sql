--Problem: https://www.hackerrank.com/challenges/full-score/problem
select h.hacker_id,h.name
from hackers h
join submissions s on s.hacker_id =h.hacker_id
join difficulty d on s.score = d.score
join challenges c on c.challenge_id=s.challenge_id
and c.difficulty_level=d.difficulty_level
group by h.hacker_id,h.name
having count(s.submission_id)>1
order by count(s.submission_id) desc , h.hacker_id asc;