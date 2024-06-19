-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

--step 1 find customerid
SELECT * from customers where lastname like 'hundey'

--step 2 make orderid
INSERT INTO orders (customerid, orderdate)
VALUES (70, '2022-09-20 14:00:00')

--step 3 find orderid
SELECT * from orders where customerid = 70 order by orderdate desc

--step 4 add items to order
INSERT INTO ordersdishes (orderid, dishid)
VALUES 
  (1001, (SELECT dishid from dishes where name = 'House Salad')),
  (1001, (SELECT dishid from dishes where name = 'Mini Cheeseburgers')),
  (1001, (SELECT dishid from dishes where name = 'Tropical Blue Smoothie'))

--step 5 check placement of order
SELECT * from ordersdishes where orderid = 1001


SELECT
  sum(d.price) as total
FROM
  dishes d
join ordersdishes o on d.dishid = o.dishid
where o.orderid = 1001