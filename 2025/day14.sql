SELECT case naughty_no
when 0 then 'Toy'
when 1 then 'Book'
else 'Coal' end
from (
    SELECT naughty_no from (
        SELECT child_id, count(*) naughty_no FROM behaviour_events
        group by child_id
        UNION
        SELECT id, 0 naughty_no from children
        where id not in (SELECT child_id from behaviour_events)
    )
    GROUP BY naughty_no
    order by count(*) desc
) limit 1
