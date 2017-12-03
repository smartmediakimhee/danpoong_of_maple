create table member(
  member_id varchar2(50) primary key,
  member_pw varchar2(50) not null,
  nickname varchar2(50) not null,
  type1 varchar2(10),
  type2 varchar2(10),
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
  file_name varchar2(255),
  likey number(10)
);

select * from post;

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

insert into MEMBER values('1', '1', 'doggle', '0', 26, '대구');
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

// 시퀀스 생성 (post)
create sequence post_num
start with 1
increment by 1;

// 시퀀스 생성 (review)??
create sequence review_num
start with 1
increment by 1;

insert into post values(post_num.nextval,'1111','1',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'2222','2',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'3333','3',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'4444','4',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'5555','5',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'6666','6',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'7777','7',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'8888','8',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'9999','9',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'1010','10',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'1111','11',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
insert into post values(post_num.nextval,'1212','12',to_char(sysdate, 'YYYY-MM-DD'),'11111','1111',0);
