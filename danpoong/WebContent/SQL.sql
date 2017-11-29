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

insert into analysis values(1,5,5,1,1,'01');
insert into analysis values(3,3,3,5,5,'02');
insert into analysis values(5,3,3,5,5,'03');
insert into analysis values(1,1,1,3,3,'04');
insert into analysis values(1,5,1,3,3,'05');
insert into analysis values(3,1,5,5,1,'06');
insert into analysis values(5,3,5,5,5,'07');
insert into analysis values(1,1,1,1,1,'08');