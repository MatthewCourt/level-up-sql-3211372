-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.


SELECT
  title,
  author,
  published,
  barcode
FROM books
WHERE published BETWEEN 1890 and 1899
and bookid not in (SELECT bookid FROM loans WHERE returneddate is null)
order by published