-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT patronid
FROM patrons
where
  firstname = 'Jack'
  AND
  lastname = 'Vaan'

SELECT bookid
FROM books
where
  barcode = 2855934983

SELECT bookid
FROM books
where
  barcode = 4043822646

INSERT INTO loans(bookid, patronid, loandate, duedate)
VALUES
  ((SELECT bookid FROM books WHERE barcode = 2855934983),
  (SELECT patronid FROM patrons WHERE firstname = 'Jack' AND lastname = 'Vaan'),
  '2022-08-25',
  '2022-09-08'),
  ((SELECT bookid FROM books WHERE barcode = 4043822646),
  (SELECT patronid FROM patrons WHERE firstname = 'Jack' AND lastname = 'Vaan'),
  '2022-08-25',
  '2022-09-08')

SELECT * FROM loans where bookid = (SELECT bookid FROM books WHERE barcode = 2855934983)
SELECT * FROM loans where bookid = (SELECT bookid FROM books WHERE barcode = 4043822646)
