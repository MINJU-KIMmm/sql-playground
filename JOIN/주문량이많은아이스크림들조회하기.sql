-- 코드를 입력하세요
SELECT flavor
from (select a.flavor, (a.total_order+b.total_order) as total
     from first_half a, (select flavor, sum(total_order) as total_order
                        from july
                        group by flavor) b
      where a.flavor = b.flavor
      order by total desc
      limit 3) calc
