SELECT sig_hash FROM teleport_log
WHERE sig_hash not in (
    SELECT sig_hash FROM known_beings
)
order by energy desc
limit 1
