show tables;

select * from player
where runs>2000 and
    century>=1
order by CENTURY Desc,RUNS DESC;

Update player
set century=4
where id=17;

select * from player
where id=17;

select * from player
where runs=(select max(runs) from player);

select * from player
where century=(select max(century) from player);

delete from player

alter table player
add average float ;

UPDATE player
set average=(runs/INNGS);
select * from player
where average>30
order by INNGS desc,average desc;

select * from player
where NAME like 'j%r';

describe player

