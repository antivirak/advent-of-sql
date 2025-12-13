SELECT sum(p.base_damage * b.multiplier) total, b.body_part
FROM body_part_affinities b
JOIN property_effects p on p.property = b.property
WHERE b.body_part in (SELECT body_part from creature_body_parts WHERE creature = 'Sleigh Bell Wisp')
  AND b.property in (SELECT property from weapon_properties WHERE weapon = 'Hearthfire Torch')
group by b.body_part
order by total desc
limit 1
