SELECT max(a.needed - coalesce(inv.quantity, 0)), a.present FROM inventory inv
right JOIN (
  SELECT present, count(*) needed from present_assignments
  GROUP BY present
) a on a.present = inv.present
