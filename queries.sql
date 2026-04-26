-- View marks
SELECT * FROM marks;

-- Join query
SELECT m.marks_id, m.marks, s.suject_name, st.student_name
FROM marks m
JOIN subjects s ON m.subject_id = s.subject_id
JOIN students st ON m.student_id = st.student_id;

-- Total marks per student
SELECT s.student_id, s.student_name, SUM(m.marks) AS total_marks
FROM students s 
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name;
