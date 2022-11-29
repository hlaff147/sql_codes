-- Create table student 
CREATE TABLE student (
    student_id INT,
    name_std VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

-- Describe table student
DESCRIBE student

-- Select all from table student
SELECT * FROM student;

-- Insert into student
INSERT INTO student VALUES(1, 'Camila', 'Math')
INSERT INTO student VALUES(2, 'Humberto', 'Sociology')
INSERT INTO student VALUES(3, 'Teste', 'Sociology')

-- Search the student order by ID
SELECT * FROM student ORDER BY student_id;


DROP TABLE student

CREATE TABLE student (
    student_id INT,
    name_std VARCHAR(20) NOT NULL,
    -- major VARCHAR(20) UNIQUE,
    major VARCHAR(20) DEFAULT 'Undecided'
    PRIMARY KEY(student_id)
);

-- Insert into student
INSERT INTO student VALUES(1, 'Camila', 'Math')
INSERT INTO student VALUES(2, 'Humberto', 'Sociology')
-- Dont work because have the same major that Humberto
INSERT INTO student VALUES(3, 'Teste', 'Sociology') 
-- Work
INSERT INTO student VALUES(3, 'Carla', 'Biology')
