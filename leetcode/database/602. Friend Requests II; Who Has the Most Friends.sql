select
  id,
  count(*) as num
from
  (
    select
      requester_id as id
    from
      RequestAccepted
    union all
    select
      accepter_id as id
    from
      RequestAccepted
  ) all_id
group by
  id
order by
  num desc
limit
  1;