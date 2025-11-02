select p.product_id,
(case when (sum(units) = 0 or sum(units) is null) then 0 else round(sum(price * units) / sum(units),2) end)
 as average_price
from prices p 
left join UnitsSold u 
on (p.product_id = u.product_id and u.purchase_date between p.start_date and p.end_date)
group by product_id
