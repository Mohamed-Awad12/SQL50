select s.student_id, s.student_name, b.subject_name, count(e.student_id)as attended_exams
from Students s cross join Subjects b left join Examinations e  on (s.student_id = e.student_id and e.subject_name = b.subject_name) 
group by student_id, subject_name 
order by student_id, subject_name
