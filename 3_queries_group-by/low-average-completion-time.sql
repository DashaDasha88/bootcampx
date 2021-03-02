SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignment_duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments on duration
WHERE end_date IS FULL
GROUP BY student
ORDER BY average_assignment_duration  DESC;