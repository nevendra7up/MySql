Create database Nevendra;

use Nevendra;

show tables;

create table Class(
    id int auto_increment primary key,
    class char(20) 
);

insert into Class(class) values
    ("IX"),
    ("X"),
    ("XI"),
    ("XII");

select * from Class;

Create table Section(
    id int auto_increment primary key,
    section char(20)
);

insert into Section(section) values
('A'),
('B'),
('C'),
('D');

select * from Section;


create table course(
    id int auto_increment primary key,
    course char(40)
);

insert into course(course) values 
('data anlayst');

select * from course;


create table Student(   
    id int auto_increment primary key,
    roll_no int,
    name char(20),
    class_id int,
    section_id int,
    course_id int,
    foreign key(class_id) references Class(id),
    foreign key(section_id) references Section(id),
    foreign key(course_id) references course(id)
);

insert into Student(roll_no,name,class_id,section_id,course_id) values
(24,'ANAND',4,2,NULL);

select * from Student;

select Student.name,Class.class, Section.section, Student.roll_no, course.course
from Student,Class,Section,course
where class_id=Class.id and section_id=Section.id and course_id=course.id;

select Student.name,Class.class, Section.section, Student.roll_no, course.course
from Student,Class,Section,course
where class_id=Class.id and section_id=Section.id and course_id=course.id AND
      Class.class='XII' And
      Section.section='B';

select Student.name,Class.class, Section.section, Student.roll_no 
from Student,Class,Section
where class_id=Class.id and section_id=Section.id AND
      Class.class='XII' And
      Section.section='B';

Select Student.name,Student.roll_no,student.course_id,course.course from Student
RIGHT JOIN course
ON Student.course_id=course.id;


Select Student.name,Student.roll_no,student.course_id  from student
LEFT JOIN course
ON Student.course_id=course.id;

Select Student.name,Student.roll_no,course.id,Student.course_id from student
INNER JOIN course
ON Student.course_id=course.id;

select Student.name,Class.class, Section.section, Student.roll_no, course.course
from (((student 
LEFT jOIN Class on student.class_id=class.id)
LEFT JOIN section on student.section_id=section.id)
RIGHT JOIN course on student.course_id=course.id);
        





