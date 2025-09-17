select t.machine_id, round(sum(t.timestamp - v.timestamp)/(count(t.machine_id)/2),3) as processing_time
from Activity as t cross join Activity as v on 
(t.machine_id = v.machine_id and t.process_id = v.process_id and t.activity_type = 'end') group by machine_id
