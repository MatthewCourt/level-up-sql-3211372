-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
-- firstname, lastname, email

SELECT
  c.customerid,
  c.firstname,
  c.lastname,
  c.email,
  count(o.orderid) as amount
from
  orders o
join
  customers c
on
  c.customerid = o.customerid
group by
  o.customerid
order by
  amount desc
limit 10