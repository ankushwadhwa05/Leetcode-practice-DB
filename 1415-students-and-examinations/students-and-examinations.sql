WITH CTE AS (SELECT * from Students s 
cross join Subjects s1)
SELECT distinct c.student_id,c.student_name,c.subject_name,count(e.subject_name) as attended_exams
from Cte c
left outer join Examinations e on e.student_id=c.student_id and e.subject_name=c.subject_name
group by c.student_id,c.student_name,c.subject_name
order by c.student_id,c.subject_name