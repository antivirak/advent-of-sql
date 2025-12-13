SELECT sum(cond) FROM (
    SELECT AVG(temp_celsius)>0 cond from temperature_readings
    group by reading_date
)
