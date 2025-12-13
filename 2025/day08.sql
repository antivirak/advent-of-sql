SELECT group_concat(letter) FROM (
    SELECT r.letter
    FROM teleport_sequence s
    JOIN runes r on r.id = s.rune_id
    order by position
)
