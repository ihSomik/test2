select
  name,
  bonus
from
  Employee e
  left join Bonus b on e.empID = b.empID
where
  bonus < 1000
  or bonus is null;