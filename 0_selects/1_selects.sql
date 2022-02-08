SELECT students.name as student_name, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date, students.start_date students_start_date FROM students LEFT OUTER JOIN cohorts ON cohort_id = cohorts.id
WHERE NOT cohorts.start_date = students.start_date
ORDER BY cohorts.start_date;