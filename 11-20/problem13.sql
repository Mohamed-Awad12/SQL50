select e.name from employee e 
cross join employee m on e.id=m.managerId 
group by m.managerId 
having count(m.managerId) >= 5
