create database student;

create table students (
	id serial PRIMARY KEY,
	name varchar,
	age integer,
	saved  date
);	


INSERT INTO students (name, age, saved) VALUES (
'Alex', 25, '2020-10-28');
INSERT INTO students (name, age, saved) VALUES (
'Vasya', 35, '2020-10-28');

UPDATE students SET name = 'Petya' WHERE id = 1;

DELETE FROM students WHERE id = 2;

SELECT * FROM students;