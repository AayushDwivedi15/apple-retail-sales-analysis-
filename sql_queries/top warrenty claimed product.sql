select top 1 products.Product_Name
from products inner join 
sales on sales.product_id = products.Product_ID
inner join warranty on sales.sale_id = warranty.sale_id
group by products.Product_Name
order by count(warranty.sale_id) desc





