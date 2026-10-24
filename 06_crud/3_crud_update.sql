DESC system.students;

-- Before updates -> Select first
SELECT * FROM students WHERE student_id = 3;

-- important to have a where clause when you update
UPDATE students
SET major = 'DBA';

UPDATE students
SET major = 'DBA'
WHERE student_id = 3;
SELECT * FROM students;
EXIT
