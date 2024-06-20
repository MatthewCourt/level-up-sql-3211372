-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT count(b.title)
FROM books b
where title = 'Dracula'

SELECT count(b.title)
FROM loans l
join books b
on b.bookid = l.bookid
where b.title = 'Dracula' and l.returneddate is NULL

SELECT
  (SELECT count(b.title)
    FROM books b
    where title = 'Dracula') -
  (SELECT count(b.title)
    FROM loans l
    join books b
    on b.bookid = l.bookid
    where b.title = 'Dracula' and l.returneddate is NULL) as amount

