SELECT count(*) FROM (
    SELECT ch.name, count(*) from children ch
    JOIN behaviour_events b on b.child_id = ch.id
    group by ch.name
    having count(*) > 1
)
