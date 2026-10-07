
select round(cast(count(warranty.claim_id) as decimal)/(select count(sales.sale_id)
from sales)*100,2) as warrenty_claim_rate
from warranty



