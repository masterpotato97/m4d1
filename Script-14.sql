--1
select count(last_name)
from actor a 
where last_name like 'Wahlberg';

--2
SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--3
  
  SELECT
    f.film_id,
    f.title,
    COUNT(i.film_id) AS film_count
FROM
    inventory i
JOIN
    film f ON i.film_id = f.film_id
GROUP BY
    f.film_id, f.title
ORDER BY
    film_count DESC
LIMIT 1;

--4
select last_name			
from customer c  
where last_name like 'William'

--5

select staff_id,
sum(staff_id) as total_quantity
from rental
group by staff_id 
order by total_quantity desc 
limit 1;

--6
select district,
sum(distinct district)
from city c ;

--7
select film_id,
count(actor_id) as actor_count
from film_actor fa 
group by film_id 
order by actor_count desc ;

--8
select count(last_name)
from customer c
where Last_name like '%es'

--9

SELECT
    p.amount,
    COUNT(r.rental_id) AS rental_count
FROM
    payment p
JOIN
    rental r ON p.customer_id = r.customer_id
WHERE
    p.amount >+4.99 AND
    p.customer_id BETWEEN 380 AND 430
GROUP BY
    p.amount
HAVING
    COUNT(r.rental_id) > 250;
   
   
--10
   
   SELECT COUNT(DISTINCT rating) AS rating_categories_count
FROM film;

SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;
