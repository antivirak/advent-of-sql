SELECT weapon, count(*) from weapon_properties w
inner join creature_weaknesses c on c.property = w.property
where c.type == 'weakness'
  and c.creature == 'Sleigh Bell Wisp'
group by weapon
order by count(*) desc
limit 1
