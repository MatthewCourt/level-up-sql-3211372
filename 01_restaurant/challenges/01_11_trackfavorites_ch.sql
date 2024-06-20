-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * from customers where lastname = 'Goldwater'

SELECT * from dishes where name = 'Quinoa Salmon Salad'

Update
  customers
Set
  favoritedish = (SELECT dishid from dishes where name = 'Quinoa Salmon Salad')
where
  customerid = (SELECT customerid from customers where lastname = 'Goldwater')
