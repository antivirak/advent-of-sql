SELECT e.name, count(*) from reindeer r
join checkins rc on rc.reindeer_id = r.id
join elf_checkins ec on ec.work_date = rc.checkin_date
join elves e on e.id = ec.elf_id
where r.name = 'Blitzen'
group by e.name
order by count(*) desc
limit 1
