SELECT *
FROM inventory
WHERE film_id IN
(
  SELECT film_id
  FROM film
  WHERE title = 'EARLY HOME'
);

SELECT 
i.*
from inventory i
join film f on i.film_id = f.film_id
where f.title = 'EARLY HOME'


select
*
from customer c
WHERE
address_id in
(
    select
    address_id
    from
    address
    WHERE
    city_id in
    (
        select
        city_id
        from
        city
        where 
        city = 'Dallas'
    )
)


select
c.*
from
customer c
join address a on c.address_id=a.address_id
join city ci on ci.city_id = a.city_id
where ci.city = 'Dallas'