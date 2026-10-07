
--check if there are any sales records with a product_id that does not exist in the products master table.

select sales.product_id
from sales left join
products on sales.product_id = products.Product_ID
where products.Product_ID is null


--check if there are any warranty claims linked to a sale_id that does not exist in the sales table

select warranty.sale_id 
from warranty left join 
sales
on warranty.sale_id = sales.sale_id
where sales.sale_id is null

