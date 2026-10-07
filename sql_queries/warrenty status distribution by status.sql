select count(warranty.claim_id) as warrenty_claims,
warranty.repair_status as repair_status
from warranty
group by warranty.repair_status