-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT
  *
FROM
  customers
WHERE
  email = 'smac@kinetecoinc.com'


INSERT INTO
  customers (
    firstname,
    lastname,
    email
  )
VALUES (
  'Sam',
  'McAdams',
  'smac@kinetecoinc.com'
)


INSERT INTO
  reservations (customerid, date, partysize)
VALUES (
  (SELECT customerid FROM customers WHERE email = 'smac@kinetecoinc.com'),
  '2022-08-12 18:00:00',
  5
)


SELECT
  *
FROM
  reservations
WHERE
  date = '2022-08-12 18:00:00'