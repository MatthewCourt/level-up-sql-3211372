-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT
  *
FROM
  reservations as r
join
  customers as c
on
  r.customerid = c.customerid
WHERE
  c.firstname like 'N%'
  and
  r.date > '2022-07-24'


delete from
  reservations
WHERE
  reservationid = 2000
