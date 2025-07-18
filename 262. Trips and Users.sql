select
  request_at as Day,
  round(sum(status != 'completed') / count(*), 2) as 'Cancellation Rate'
from
  Trips t
  join Users c on client_id = c.users_id
  and c.banned = 'No'
  join Users d on driver_id = d.users_id
  and d.banned = 'No'
where
  request_at between "2013-10-01" and "2013-10-03"
group by
  request_at;