SELECT a.animal_id, a.animal_type, a.name
from animal_ins a, animal_outs b
where a.animal_id=b.animal_id
and a.sex_upon_intake!=b.sex_upon_outcome
order by a.animal_id
