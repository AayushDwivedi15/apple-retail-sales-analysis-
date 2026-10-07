with cte as (select sum(cast(sales.quantity as bigint)* products.Price) as total_revenue,
stores.City as city
from sales inner join products
on sales.product_id = products.Product_ID
inner join stores
on sales.store_id = stores.Store_ID
GROUP BY City)

select top 5 
city,total_revenue 
from cte
order by total_revenue desc





