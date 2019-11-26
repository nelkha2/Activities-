select
co.country, count(co.country) as "CountryCount"
from
city c 
join country co on c.country_id = co.country_id
group by
co.country
order by
"CountryCount" desc

--this is terrible
select
*
from
address
where
district in
(
    select
    district
    from
    address
    where
    address like '%Way%'
)