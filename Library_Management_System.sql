create table lib ( bookname varchar(15),author varchar(15), publication varchar(10), noofcopies number(4));
create table books ( bookno number(4), bookname varchar(15),available varchar(10),subscribed_to number(4) );


insert into lib values('cn','frozan','tata',4);
insert into lib values('ooad','scilder','tata',4);
insert into lib values('dbms','elimasri','tata',4);
insert into lib values('evs','ravi','scitech',1);
insert into lib values('java','steve','scitech',2);
insert into lib values('python','john','tata',2);
insert into lib values('oracle','steeve','scitech',3);
insert into lib values('AC','curie','scitech',4);
insert into lib values('dc','stephen','tata',6);
insert into lib values('machinelearning','joseph','scitech',4);
insert into lib values('AI','fred','john',4);
insert into lib values('chemistry','brooks','gauss',3);
insert into lib values('datascience','jack','tata',2);
insert into lib values('deeplearning','steeve','scitech',2);
insert into lib values('c++','brooks','tata',1);
insert into lib values('javascript','stephen','scitech',3);
insert into lib values('os','ravi','scitech',5);
insert into lib values('datacommunications','elimasri','scitech',4);



insert into books values(23,'cn','yes',0);
insert into books values(24,'cn','yes',0);
insert into books values(25,'cn','yes',0);
insert into books values(26,'cn','yes',0);
insert into books values(27,'ooad','yes',1);
insert into books values(28,'ooad','yes',0);
insert into books values(29,'ooad','yes',0);
insert into books values(30,'ooad','yes',0);
insert into books values(31,'ooad','yes',0);
insert into books values(32,'dbms','yes',0);
insert into books values(33,'dbms','yes',0);
insert into books values(34,'dbms','yes',0);
insert into books values(35,'dbms','yes',0);
insert into books values(36,'evs','yes',0);
insert into books values(37,'evs','yes',1);
insert into books values(38,'java','yes',2);
insert into books values(39,'java','yes',2);
insert into books values(40,'python','yes',3);
insert into books values(41,'oracle','yes',3);
insert into books values(42,'ac','yes',4);
insert into books values(43,'dc','yes',2);
insert into books values(44,'machinelearning','yes',3);
insert into books values(45,'machinelearning','yes',1);
insert into books values(46,'AI','yes',2);
insert into books values(47,'AI','yes',3);
insert into books values(48,'chemistry','yes',2);
insert into books values(49,'datascience','yes',3);
insert into books values(50,'deeplearning','yes',2);
insert into books values(51,'c++','yes',2);
insert into books values(52,'javascript','yes',3);
insert into books values(53,'os','yes',3);
insert into books values(54,'datacommunications','elimasri',5);



select * from lib;

select * from books;

declare
bookno number(4);
bname varchar(15);
noc number(4);
author varchar(15);
publication varchar(10);
nobooks number(4);

begin
bookno:= :bookno;
bname:=:bookname;
author:=:author;
publication:=:publication;
noc:=:noofcopies;

select count(*) into nobooks from lib where bookname=bname;
if nobooks=0 then
dbms_output.put_line(' we dont have that book');
insert into lib values(bname,author,publication,noc);
else
dbms_output.put_line(bname||' we have that book');
end if;
end;
