SELECT COUNT(assistance_requests.*) AS assistance_requests, students.name AS name
FROM students 
JOIN assistance_requests ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;