--Problem: https://www.hackerrank.com/challenges/contest-leaderboard/problem
with totalscore as
(select h.hacker_id, s.challenge_id, max(s.score) t_score
from hackers h ,submissions s
where h.hacker_id=s.hacker_id
group by h.hacker_id,s.challenge_id)
select h.hacker_id,h.name, sum(tot.t_score)
from hackers h, totalscore tot
where h.hacker_id=tot.hacker_id
group by h.hacker_id,h.name
having sum(tot.t_score)>0
order by sum(tot.t_score) desc, h.hacker_id asc;
