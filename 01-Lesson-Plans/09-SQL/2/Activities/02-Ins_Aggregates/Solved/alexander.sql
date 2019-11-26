select
c.first_name,
c.last_name, 
a.address,
a.district,
a.postal_code,
ci.city,
co.country
from customer c
join address a on c.address_id = a.address_id
join city ci on ci.city_id = a.city_id
join country co on co.country_id = ci.country_id
LIMIT 10