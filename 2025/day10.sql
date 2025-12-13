SELECT creature, count(*) from creature_traits c where fragment in (
    SELECT distinct fragment from rune_fragments
    WHERE sig_hash = 'VOID-7F3C'
) group by creature
having count(*) = (
SELECT total from (
    select creature, count(*) total from creature_traits
    GROUP BY creature
))
