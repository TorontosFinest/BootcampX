SELECT students.name as student, avg(assignment_submissions.duration) AS average_duration
from assignment_submissions
JOIN students on student_id = students.id  
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_duration DESC;