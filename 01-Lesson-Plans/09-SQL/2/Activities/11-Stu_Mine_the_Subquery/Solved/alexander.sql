select
count(a.actor_id) as ActorCount,
f.title
from
actor a
join film_actor fa on fa.actor_id = a.actor_id
join film f on f.film_id = fa.film_id
group by
f.title
having
f.title = 'ALTER VICTORY'


select
count(f.title) as filmCount,
f.title,
s.first_name, s.last_name
from
staff s
join rental r on s.staff_id = r.staff_id
join inventory i on i.inventory_id = r.inventory_id
join film f on f.film_id = i.film_id
group by f.title, s.first_name, s.last_name
having
s.first_name = 'Jon' and s.last_name = 'Stephens'
order by filmCount desc



select distinct
f.title,
s.first_name,
s.last_name
from
staff s
join rental r on s.staff_id = r.staff_id
join inventory i on i.inventory_id = r.inventory_id
join film f on f.film_id = i.film_id
where
s.first_name = 'Jon' and s.last_name = 'Stephens'