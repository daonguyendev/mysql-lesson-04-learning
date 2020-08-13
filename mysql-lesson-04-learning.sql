create database if not exists student_management;

alter database student_management character set utf8;

use student_management;

create table student_management.student (
	id int not null,
    full_name varchar(50) not null,
    gender varchar(10),
    age int,
    city varchar(20),
    weight float,
    primary key (id)
);

alter table student_management.student
modify column full_name varchar(100);

alter table student_management.student change full_name fullname varchar(50);

insert into student_management.student (id, fullname, gender, age, city, weight) 
values (1, 'Nguyen Thanh Nhan', 'Nam', 19, 'Can Tho', 56.57);
insert into student_management.student (id, fullname, gender, age, city, weight) 
values (2, 'Pham Thu Huong', 'Nu', 20, 'Vinh Long', 72.45);

update student_management.student 
set fullname = 'Pham Thu Huong', gender = 'Nu', age = 20, city = 'Vinh Long', weight = '72.45'
where id = 2;

delete from student_management.student where id = 1;

select * from student;

alter table student add constraint pk_id primary key (id); /*in case forget set primary key fpr table*/

/*create primary key auto increment*/
create table student_management.student (
	id int not null auto_increment,
    full_name varchar(50) not null,
    gender varchar(10),
    age int,
    city varchar(20),
    weight float,
    primary key (id)
);

insert into student_management.student (id, fullname, gender, age, city, weight) 
values (3, 'Nguyen Nhu Ngoc', 'Nu', 20, 'Soc Trang', 85.39);
insert into student_management.student (id, fullname, gender, age, city, weight) 
values (4, 'Bui Thanh Bao', 'Nam', 19, 'Soc Trang', 49.32);

select * from student;

update student set age = 22, city = 'Da Nang' where id = 3;

/*not correct because condition statement id cannot =3 and =4 at the same time*/
delete from student_management.student where id = 4 and id = 3;
delete from student_management.student where id = 4 or id = 3;/*is correct*/
delete from student_management.student where id in (3, 4);/*is correct*/

select * from student_management.student;
select id, fullname from student_management.student where id = 1;


