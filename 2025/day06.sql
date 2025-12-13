select t.name from (
    SELECT toy_id, sum(quantity) total from production_logs
    group by toy_id
) s join production_summary ps on ps.toy_id = s.toy_id
join toys t on t.id = s.toy_id
where ps.expected_total <> s.total
