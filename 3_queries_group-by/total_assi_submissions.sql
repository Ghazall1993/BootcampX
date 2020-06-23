SELECT cohorts.name as cohort, count(assignment_submissions.id) as total_submissions 
FROM assignment_submissions
JOIN students On student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP by cohorts.name
ORDER BY total_submissions DESC;
