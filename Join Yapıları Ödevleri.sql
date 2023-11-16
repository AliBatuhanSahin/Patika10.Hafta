-- ÖDEV 9-

--1-
SELECT c.city, co.country FROM city AS c
INNER JOIN country AS co ON c.country_id = co.country_id
--2-
SELECT p.payment_id, c.first_name, c.last_name FROM payment AS p
INNER JOIN customer AS c ON c.customer_id = p.customer_id
--3-
SELECT r.rental_id, c.first_name, c.last_name FROM rental AS r
INNER JOIN customer AS c ON c.customer_id = r.customer_id

-- ÖDEV 10-

--1-
SELECT c.city, co.country FROM city AS c
LEFT JOIN country AS co ON c.country_id = co.country_id
--2-
SELECT p.payment_id,c.first_name, c.last_name FROM payment AS p
RIGHT JOIN customer AS c ON c.customer_id = p.customer_id
--3-
SELECT r.rental_id, c.first_name, c.last_name FROM rental AS r
FULL JOIN customer AS c ON c.customer_id = r.customer_id


-- ÖDEV 11-

--1-
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer

--2-

SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer

--3-

SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer

--4-
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer

SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer

SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer