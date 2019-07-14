DROP TABLE tickets;
DROP TABLE films;
DROP TABLE customers;


CREATE TABLE films(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255)
  price INT4
  film_id INT4
);

CREATE TABLE customers(
  id SERIAL4 PRIMARY KEY
  name VARCHAR(255)
  funds INT4
  customer_id INT4
);

CREATE TABLE tickets(
  id SERIAL4 PRIMARY KEY
  id INT4
  customer_id INT4
  film_id INT4
);
