select id , count(id) num from 
(select requester_id as id from requestaccepted 
union all
select accepter_id as id 
from requestaccepted) a group by id
order by count(id) desc limit 1