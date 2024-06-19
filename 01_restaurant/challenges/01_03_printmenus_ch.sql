-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT
  type,
  name,
  price,
  description
FROM
  Dishes
ORDER BY
  price

SELECT
  type,
  name,
  price,
  description
FROM
  Dishes
where
  type = 'Appetizer'
  or
  type = 'Beverage'
ORDER BY
  type

SELECT
  type,
  name,
  price,
  description
FROM
  Dishes
where
  type != 'Beverage'
ORDER BY
  type