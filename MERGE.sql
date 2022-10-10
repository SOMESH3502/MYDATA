create database kiran
create table kian1(id int, name varchar(200), salary int)
insert into kian1 values(11, 'kiran', 10000000) 
insert into kian1 values(110, 's r k', 10000)
insert into kian1 values (113,'poojitha', 1000)
insert into kian1 values (114,'poojitha', 10000)
select * from kian1
create table master1(id int, name varchar(200), salary int)

insert into master1
select * from kian1 as k
where not exists(select * from master1 as m where m.id=k.id)

update kian1
set salary = salary + salary*0.1
where name like 'p%'

insert into master1
select * from kian1 as k
where  exists(select * from master1 as m where m.id=k.id)
merge master1 as m using kian1 as k 
on m.id = k.id 
when not matched then insert(id, name, salary) values(k.id, k.name, k.salary)
when matched then update set m.salary = k.salary;

select*from master1
select * from kian1
