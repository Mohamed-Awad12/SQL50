select t.id from Weather as t cross join Weather as y where (datediff(t.recordDate,y.recordDate)=1 and t.temperature > y.temperature)
