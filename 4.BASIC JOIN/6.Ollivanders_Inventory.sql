--Problem: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
select w.id, p.age,w.coins_needed, w.power
from wands w,wands_property p
where w.code=p.code
and p.is_evil =0
and w.coins_needed=
(select min(w2.coins_needed)
from wands w2,wands_property p2
where w2.code=p2.code
and p.age=p2.age
and w.power=w2.power)
order by w.power desc, p.age desc;