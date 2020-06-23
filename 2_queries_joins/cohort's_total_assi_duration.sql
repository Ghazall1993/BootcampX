SELECT SUM(assignment_submissions.duration) as total_duration
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
where students.id IN (
  SELECT students.id
  FROM students
  JOIN cohorts
  ON cohort_id  = cohorts.id
  WHERE cohorts.name ='FEB12');

-- Better way to implement this query:
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'FEB12';