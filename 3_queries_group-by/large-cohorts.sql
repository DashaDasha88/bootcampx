SELECT cohorts.name as cohort_name, count(duration*) as average_assignment_duration
FROM assignment_submissions 
JOIN students ON cohorts.id as cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;