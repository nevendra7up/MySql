show tables;

drop table random;

create table random(
    id int,
    name char(40)
);

describe random;

alter table random
add constraint 
primary key(id);

alter table random
modify column id int not null auto_increment;

alter table random
drop primary key;

insert into random(name) values
('NEVENDRA'),
('SHIVENDRA');

select * from random;

delete from random
where id=4;


UPDATE random
set name="VICKY"
where name="SHIVENDRA";

INSERT INTO random (id,date_of_birth) VALUES 
    (1,'2001-03-27'),
    (2,'1997-02-10')
ON DUPLICATE KEY UPDATE  
    date_of_birth = VALUES(date_of_birth);

Update random
set name='ANSHU'
where id=1;


select name from random
where name is NULL;

alter table random 
add date_of_birth DATE;

drop table subject;

create table subject(
    id int not null auto_increment  primary key,
    name char(40),
    random_id int
);

alter table subject
add constraint random_id
FOREIGN key(random_id) REFERENCES random(id);

insert into subject(name,random_id) VALUES
('data analyst',1),
('human resources',2);

select * from subject;
select random.name,random.date_of_birth,subject.name
from random,subject
where random_id=random.id;


