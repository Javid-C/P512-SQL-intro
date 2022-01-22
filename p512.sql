--create database
create database P512Course

--delete database
drop database P512Course

use P512Course

--create table
create table Student(
	Id int,
	[Name] nvarchar(25),
	Surname nvarchar(30),
	AvgPoint int
)

create table Groups(
	Id int,
	Name nvarchar(25)
)

--delete table
drop table Student

--delete column

alter table Student
drop column AvgPoint

--add column
alter table Student
add Email nvarchar(25)


--update column
alter table Student
alter column Email nvarchar(45)

--Fabrika ayarlari
truncate table Student

exec sp_rename 'P512Course.P512Course.Student','Students'

exec sp_rename 'P512Course.Student.Surname', 'Soyad'

exec sp_rename 'Groups', 'Qruplar'


--insert datas to table
insert into Student
values(1,'Togrul','Asadov','togrul@gmail.com'),
(1,'Togrul','Asadov','togrul@gmail.com'),
(1,'Togrul','Asadov','togrul@gmail.com')

insert into Student(Name,Surname)
values('Ricat','Alizade')

insert into Student(Name,Surname)
values('Ali','Aliyev'),
('Chimnaz','Memmedova'),
('Latif','Hasanzade'),
('Idris','Mikayil')


select * from Student

select Name,Surname from Student

select Id,Name,Surname,Email from Student

select Id,(Name + ' ' + Surname) as Fullname,Email from Student

select Id,(Name + ' ' + Surname) 'Fullname',Email from Student

select Id, (Name + ' ' + Surname) as Fullname, AvgPoint as Point from Student where AvgPoint>50

select (Name + ' ' + Surname) as Fullname, AvgPoint as Point from Student
where AvgPoint>=87 AND AvgPoint<97

select (Name + ' ' + Surname) as Fullname, AvgPoint as Point from Student
where AvgPoint between 0 and 52

select (Name + ' ' + Surname) as Fullname, AvgPoint as Point from Student
where AvgPoint in(1,51)

select (Name + ' ' + Surname) as Fullname, AvgPoint as Point from Student
where Name = 'Togrul'

select SUBSTRING(Surname,1,3) as [Substring] from Student

select CHARINDEX('A',[Name]) from Student

select (Name + ' ' + Surname) as Fullname, AvgPoint as Point from Student where LEN(Name)>=3

update Student
set AvgPoint=51

update Student
set AvgPoint=51 where AvgPoint<=50

update Student
set AvgPoint=61 where Name='Chimnaz'

delete from Student where AvgPoint=51




