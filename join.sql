
create table departments(
    id serial primary key,
    name varchar(255)
);

create table emploees(
    id serial primary key,
    name varchar(255),
    departments_id int references departments(id)
);

insert into departments(name) values ('departments 1');
insert into departments(name) values ('departments 2');
insert into departments(name) values ('departments 3');

insert into emploees(name, departments_id) values ('emploees 1', 1);
insert into emploees(name, departments_id) values ('emploees 2', 1);
insert into emploees(name, departments_id) values ('emploees 3', 2);
insert into emploees(name, departments_id) values ('emploees 4', null);
insert into emploees(name, departments_id) values ('emploees 5', 3);
insert into emploees(name, departments_id) values ('emploees 6', 1);

select * from departments d left join emploees e on e.departments_id = d.id;
select * from departments d right join emploees e on e.departments_id = d.id;
select * from departments d cross join emploees e;
select * from departments d full join emploees e on e.departments_id = d.id;
select * from emploees e left join departments d on e.departments_id = d.id where e.departments_id is null;


/* однинаковый вывод
*/

select * from departments d left join emploees e on e.departments_id = d.id;
select * from  emploees e left join departments d on e.departments_id = d.id;


create table teens(
    name text primary key,
    gender text
);

insert into teens(name, gender) values ('Alex','M');
insert into teens(name, gender) values ('Olga','W');
insert into teens(name, gender) values ('Pety','M');
insert into teens(name, gender) values ('Vasya','M');

select t1.name as a, t2.name as b from teens t1 cross join teens t2 where t1.gender != t2.gender;
//как сделать однополые браки не совсем понимаю