-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT
  published,
  count(distinct(title)) as amount
FROM books
group by published
order by amount desc

SELECT
  count(l.loanid) as amount,
  b.title
FROM loans l
join books b on l.bookid = b.bookid
group by b.title
order by amount desc
