SELECT cohorts.name as cohort, sum(completed_at-started_at) as average_total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
ORDER BY average_total_duration