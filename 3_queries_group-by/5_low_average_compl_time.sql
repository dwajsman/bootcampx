SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;



-- SELECT duration FROM assignments;


-- SELECT cohorts.name AS cohort_name ,COUNT(students.id) as student_count
-- FROM students 
-- JOIN cohorts
--   ON students.cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- HAVING COUNT(students.id) >= 18
-- ORDER BY COUNT(students.id);



-- works... only w student count
-- SELECT COUNT(students.id) as student_count
-- FROM students 
-- JOIN cohorts
--   ON students.cohort_id = cohorts.id
-- GROUP BY students.cohort_id
-- HAVING COUNT(students.id) >= 18
-- ORDER BY COUNT(students.id);