SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submission
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel'