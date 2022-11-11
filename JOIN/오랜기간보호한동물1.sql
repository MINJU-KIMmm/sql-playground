--not in 이용
select a.name, a.datetime
from animal_ins a
where a.animal_id not in (select animal_id from animal_outs)
order by datetime
limit 3;

--left join 이용
select a.name, a.datetime
from animal_ins a left join animal_outs b on a.animal_id = b.animal_id
where b.animal_id is null
order by a.datetime
limit 3;
