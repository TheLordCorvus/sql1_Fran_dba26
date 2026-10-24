DESC system.students;

ALTER TABLE students
MODIFY last_name VARCHAR2(101) NOT NULL;

ALTER TABLE students
ADD email VARCHAR2(100);

ALTER TABLE students
DROP COLUMN major;

DESC system.students;

EXIT
