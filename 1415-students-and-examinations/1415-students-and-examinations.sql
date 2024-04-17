# Write your MySQL query statement below
select st.student_id, st.student_name, su.subject_name , count(e.student_id) attended_exams from Students st
cross join Subjects su
left join Examinations e on st.student_id = e.student_id AND su.subject_name = e.subject_name
group by st.student_id, st.student_name, su.subject_name
order by student_id, student_name, subject_name;