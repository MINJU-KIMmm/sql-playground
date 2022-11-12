select a.product_id, a.product_name, sum(amount)*price as total_sales
from food_product A, food_order B
where A.product_id = B.product_id and month(produce_date)=5
group by product_id
order by total_sales desc, product_id
