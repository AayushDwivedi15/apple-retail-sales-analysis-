select 
sum(sales.quantity) as quantity,
category.category_name as category_name
from sales 
inner join 
products on 
sales.product_id = products.Product_ID
inner join category
on category.category_id = products.Category_ID
group by category.category_name
order by sum(sales.quantity) desc
