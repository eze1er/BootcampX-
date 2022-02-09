SELECT cohorts.name AS name, avg(started_at - completed_at) AS average_assitance_time
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
ORDER BY avg(started_at - completed_at) DESC;
