SELECT COUNT(teachers.id) as total_assistances, 
teachers.name as name
	FROM assistance_requests
	JOIN teachers ON teachers.id = teacher_id
	WHERE teachers.name = 'Waylon Boehm'
	GROUP BY teachers.name; 


-- SELECT * FROM teachers;
-- SELECT COUNT(id) FROM assistance_requests
-- WHERE teacher_id = 4;


-- SELECT COUNT(teachers.id) as total_assistances, 
-- 	FROM assistance_requests
-- 	JOIN teachers ON teachers.id = teacher_id
-- 	WHERE teachers.name = 'Waylon Boehm'; 