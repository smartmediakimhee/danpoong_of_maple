create table member(
  member_id varchar2(50) primary key,
  member_pw varchar2(50) not null,
  nickname varchar2(50) not null,
  type varchar2(10),
  age number(5),
  address varchar2(50)
);

create table drink(
  drink_id varchar2(10) primary key,
  drink_name varchar2(50) not null,
  alcohol number(10,1) not null,
  year varchar2(10),
  area varchar2(20),
  price number(10),
  info varchar2(200),
  content varchar2(1000)
);

create table post(
  num number(10) not null,
  title varchar2(30) not null,
  author varchar2(50) not null,
  time_check varchar2(20) not null,
  post_content varchar2(2000) not null,
  file varchar2(255),
  likey number(10) default 0
);

create table drink_rank(
  rank_id varchar2(10),
  rank_name varchar2(50),
  check_time varchar2(20)
);

create table analysis(
  alcohol number(10,1),
  flavor number(10),
  taste number(10),
  feel number(10),
  atm number(10),
  type varchar2(10)
);

create table review(
	num number(10),
	drink_id varchar2(10),
	score number(10,1) default 0,
	author varchar2(50),
	review_content varchar2(200)
);

insert into MEMBER values('1', '1', 'doggle', '0', 26, '�뱸');
select * from MEMBER;
drop table member;

update member set member_pw=123, nickname=123, age=123, address=123 where member_id=2;

insert into analysis values(1,3.5,5.5,7.5,3.5,'01');
insert into analysis values(5.5,7.5,10,1,7.5,'02');
insert into analysis values(10,10,10,1,5.5,'03');
insert into analysis values(1,1,1,3.5,3.5,'04');
insert into analysis values(1,3.5,1,3.5,3.5,'05');
insert into analysis values(5.5,1,10,5.5,1,'06');
insert into analysis values(10,7.5,10,1,5.5,'07');
insert into analysis values(1,3.5,1,10,1,'08');

// ������ ���� (post)
create sequence post_num
start with 1
increment by 1;

// ������ ���� (review)
create sequence review_num
start with 1
increment by 1;