.read data.sql


CREATE TABLE average_prices AS
  SELECT category AS category, AVG(MSRP) AS average_price
  FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price)
  FROM inventory GROUP BY item;



CREATE TABLE best_deal AS
  SELECT name, MIN(MSRP/rating)
  FROM products GROUP BY category;

CREATE TABLE shopping_list AS
  SELECT i.name, s.store
  FROM best_deal AS i, lowest_prices AS s
  WHERE i.name = s.item;



CREATE TABLE total_bandwidth AS
  SELECT SUM(s.Mbs)
  FROM shopping_list AS sl, stores AS s
  WHERE sl.store = s.store;

