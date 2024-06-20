-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT
  l.duedate,
  b.title,
  p.firstname,
  p.email
FROM loans l
JOIN books b on l.bookid = b.bookid
JOIN patrons p on l.patronid = p.patronid
WHERE
  l.duedate <= '2022-07-13'
  and
  l.returneddate is NULL
order by
  l.duedate
