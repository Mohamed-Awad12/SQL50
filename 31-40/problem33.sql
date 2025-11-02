select distinct a.num as ConsecutiveNums 
from logs a cross join logs b cross join logs c 
on (a.num = b.num and a.id = b.id + 1 and b.num = c.num and b.id = c.id+1)
