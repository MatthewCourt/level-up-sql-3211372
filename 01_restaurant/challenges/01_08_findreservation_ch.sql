-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT
  c.LastName,
  r.date,
  r.partysize
FROM
  reservations r
JOIN
  customers c
ON
  c.customerid = r.customerid
WHERE
  c.lastname like 'st%'
  and
  r.PartySize = 4
order by
  r.date desc
