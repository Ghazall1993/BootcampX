SELECT count(assistance_requests) as total_assistances, teachers.name as name
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP by teachers.name;