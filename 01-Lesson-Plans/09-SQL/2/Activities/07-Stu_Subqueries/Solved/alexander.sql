select
f1.title,
f1.rental_rate,
f2.AvgRentalRate
from
film f1
join 
(
    select 
    round(avg(rental_rate),2) as AvgRentalRate
    from
    film
    
) f2 on f1.rental_rate > f2.AvgRentalRate
order by
f1.rental_rate desc



select
title, 
rental_rate
from
film
where
rental_rate >
(
    select
        avg(rental_rate)
    from
        film
 )
 order by
 rental_rate desc



select
c.first_name,
c.last_name,
ci.city
from
customer c
join address a on c.address_id = a.address_id
join city ci on ci.city_id = a.city_id
where
ci.city like 'Q%'