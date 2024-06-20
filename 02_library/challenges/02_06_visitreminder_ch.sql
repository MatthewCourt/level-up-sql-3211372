-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT
  count(l.patronid) as amount,
  p.firstname,
  p.lastname,
  p.email
FROM loans l
join patrons p on l.patronid = p.patronid
group by l.patronid
having amount < 15
order by amount