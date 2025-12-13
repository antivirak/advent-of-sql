select group_concat(substring(word, 1, 1) order by word_position) from reindeer r
join clearing_messages c on c.reindeer_id = r.id
where r.name = 'Blitzen'
