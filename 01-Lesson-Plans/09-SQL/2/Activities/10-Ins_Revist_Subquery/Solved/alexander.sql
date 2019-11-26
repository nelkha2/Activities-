select
count(c.customer_id) as total_customers,
f.title,
f.rental_rate
from
customer c
join rental r on r.customer_id = c.customer_id
join inventory i on i.inventory_id = r.inventory_id
join film f on f.film_id = i.film_id
group by
f.title, f.rental_rate
HAVING
lower(f.title) = 'blanket beverly'