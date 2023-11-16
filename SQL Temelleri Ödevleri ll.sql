-- ÖDEV 5-

--1-
SELECT * FROM film WHERE title LIKE '%n' 
ORDER BY length DESC 
LIMIT 5;

--2-
SELECT * FROM film WHERE title LIKE '%n' 
ORDER BY length ASC 
OFFSET 6
LIMIT 5;

--3-
 SELECT * FROM customer
 WHERE store_id = 1
 ORDER BY last_name DESC
LIMIT 4;


-- ÖDEV 6-

--1-
SELECT AVG(rental_rate)  FROM film

--2-
SELECT COUNT (title) FROM film
WHERE title LIKE 'C%'

--3-
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99

--4
SELECT COUNT  (DISTINCT replacement_cost) FROM film
WHERE length > 150


-- ÖDEV 7-

    -1--
SELECT rating FROM film
GROUP BY rating
--2-
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY replacement_cost DESC

--3-
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id

--4-
SELECT country_id, COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC LIMIT 1
