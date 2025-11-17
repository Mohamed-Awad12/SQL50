select d.name as Department, e.name as Employee, Salary from employee e join department d on e.departmentId = d.id Where  3 > (select count(distinct (e2.Salary))
            from  Employee e2
            where e2.Salary > e.Salary
            and e.DepartmentId = e2.DepartmentId)
