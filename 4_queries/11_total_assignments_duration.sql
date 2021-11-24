-- SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests.*) AS total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignment_id = assignments.id
-- GROUP BY assignments.id
-- ORDER BY COUNT(assistance_requests.*) DESC;



SELECT day, COUNT(*) AS number_of_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;
