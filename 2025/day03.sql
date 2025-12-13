SELECT location, count(*)
from reindeer r
join locations_visited lv on lv.reindeer_id = r.id
where r.name = 'Blitzen'
group by location
order by count(*) desc
limit 1
