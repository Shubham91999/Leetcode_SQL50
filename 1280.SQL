SELECT st.student_id, st.student_name, SU.subject_name, COUNT(Examinations.student_id) as attended_exams
FROM Students  
CROSS JOIN Subjects
LEFT JOIN Examinations ON st.student_id = Examinations.student_id 
                      AND SU.subject_name = Examinations.subject_name
GROUP BY st.student_id, st.student_name, SU.subject_name
ORDER BY st.student_id, SU.subject_name;