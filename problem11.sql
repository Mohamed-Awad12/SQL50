select name, bonus from employee as e left outer join bonus as b on (e.empId = b.empId) where (b.bonus < 1000 or b.bonus is null)
