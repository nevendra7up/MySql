show tables;


create table random(
    id int,
    name char(40)
);

describe random;

alter table random
add primary key(id);

alter table random
modify column id int not null auto_increment;

alter table random
drop primary key;

insert into random(name) values
('NEVENDRA'),
('SHIVENDRA');

select * from random;

delete from random;

drop table random;

UPDATE random
set name="VICKY"
where name="SHIVENDRA";

INSERT INTO random (id, name) VALUES 
    (1,'NEVENDRA'),
    (2,'SHIVENDRA')
ON DUPLICATE KEY UPDATE 
    name = VALUES(name);
    
    

