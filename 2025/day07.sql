SELECT SUBSTRING(error_code, 1, CHARINDEX('_', error_code, CHARINDEX('_', error_code) + 1) - 1) e_cat, count(*)
FROM machine_errors 
group by e_cat
order by count(*) desc
limit 1
