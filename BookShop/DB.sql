select * from test_member;

create table test_member(
	id 		varchar2(15) primary key
	, passwd	varchar2(70) not null
	, name		varchar2(20) not null
	, reg_date	date not null
);

update test_member set NAME='test2' where ID='test';

insert into test_member values('test','123','test',sysdate);

select * from admin;

CREATE TABLE admin(
	admin_id	varchar2(10) primary key
	, admin_name	varchar2(20) not null
	, admin_grade	char(1)	     not null
)

insert into admin values('admin', '관리자', '1');
insert into admin values('green', '안양그린', '3');
commit

create table member	-- 일반회원
(
	memid			varchar2(15)		primary key  
	, memname		varchar2(10)		not null
	, mempwd		varchar2(15)		not null
	, membirth		char(6)			not null
	, memzip		char(6)						not null
	, memaddr		varchar2(100)		not null
	, tel			varchar2(13)					
	, mobile		varchar2(13)
	, mailling		char(1)			default 'y'
	, gender		char(1)			CONSTRAINT member_gender_CK CHECK (gender IN('m', 'f'))
	, memRegist		date			default sysdate
	, memarea		varchar2(10)		not null
);
delete from member

select * from member

insert into member values('kim03', '김영삼', '1234', '870215', '122021', '서울시 강남구 압구정동 14-25', 
'02-578-5781', '', 'y', 'm', sysdate, '서울');
insert into member values('kimos', '김옥순', '1234', '790925', '402021', '강원도 속초시 중앙동 25 한양 APT 
201동 150호', '', '010-5875-8971', 'y', 'f', sysdate, '강원');
insert into member values('baeej', '홍길동', '1234', '850930', '122021', '경기도 안양시 만안구 안양2동 
689-174', '','010-498-3860', 'y', 'm', sysdate, '경기');
insert into member values('kangsk', '강성경', '1234', '700103', '210778', '인천광역시 부평구 법성공원1길', 
'', '010-123-4578', 'y', 'f', sysdate, '인천');
insert into member values('gohk', '고현철', '1234', '880830', '125784', '서울시 관악구 신림동 45-58', 
'','010-8054-4789', 'n', 'm', sysdate, '서울');
insert into member values('joko', '조광욱', '1234', '900706', '305783', '경기도 석수동 528-57', 
'','010-1058-7894', 'y', 'm', sysdate, '경기');
insert into member values('kimjo', '김재웅', '1234', '800517', '405874', '경기도 분당시 정자동 180 삼성미켈란쉐
르빌 105호', '','010-3226-7841', 'y', 'm', sysdate, '경기');
insert into member values('kimbs', '김봉섭', '1234', '650827', '547892', '인천시 옹진군 북도면 23번지', 
'','010-326-7121', 'y', 'm', sysdate, '인천');
insert into member values('leeos', '이용섭', '1234', '660427', '412123', '경기도 안산시 고잔동 23-43', 
'','010-1246-8575', 'y', 'm', sysdate, '경기');
insert into member values('kimol', '김영림', '1234', '780519', '138585', '서울시 강남구 잠실동 78-58', 
'','011-326-1231', 'y', 'f', sysdate, '서울');
insert into member values('chohs', '최현수', '1234', '861212', '211123', '경기도 수원시 영통구 매탄동 89-7', 
'','010-344-4321', 'n', 'm', sysdate, '경기');
insert into member values('kimmy', '김미연', '1234', '761014', '123432', '경기도 안양시 동안구 호계동 789', 
'','010-8326-7261', 'y', 'f', sysdate, '경기');
insert into member values('choej', '최은주', '1234', '910528', '234123', '서울시 은평구 신사동 234', 
'','010-784-5687', 'y', 'f', sysdate, '서울');
insert into member values('leeso', '이성욱', '1234', '670521', '543234', '서울시 강남구 신사동 879', 
'','010-3026-2587', 'y', 'm', sysdate, '서울');

CREATE TABLE faq(
	  no		number			primary key
	, title		varchar(100) not null	--질문제목
	, content	varchar(4000) not null		-- 질문 답변
	, writer	varchar(20)			not null
	, writeYMD	date			default sysdate
)

CREATE TABLE adminNotice(
	  no		number			primary key
	, title		varchar(100) not null	--공지제목
	, content	varchar(4000) not null	-- 공지답변
	, writer	varchar(20)		not null
	, writeYMD	date			default sysdate
)

CREATE TABLE qna
(
	no		number			primary key
	, writer	varchar(20)		not null
	, mail		varchar(50)		
	, title		varchar(100)	not null
	, content	varchar(4000)	
	, pwd		varchar(20)	not null
	, writerIp	varchar(15)		not null
	, writeDate	date	default sysdate
	-------------------------------------------------------
	, question_no	number			
	, group_ord	number			default 0
	, group_lvl	number			default 0
)

CREATE TABLE category       
(
	cateCode		varchar(3)	primary key
	, cateName	varchar(30)		not null
)

CREATE TABLE product	--책테이블
(
	no		int			primary key    
	, name		varchar(50)		not null
	, cotent		varchar(4000)	not null
	, price		int			default	0
	, oriImg		varchar(100)	not null
	, repImg		varchar(100)		not null
	, cateCode	varchar(3)		references category(cateCode)
	, ymd		date			default sysdate
)

delete from admin where ADMIN_ID='123'

select * from admin

create sequence faq_serial_no increment by 1;

select faq_serial_no.nextval from dual;

insert into faq(no,title,content,writer) values (faq_serial_no.nextval,'첫번째 FAQ','^^','admin');

commit;

select * from faq;

delete from faq;

drop sequence faq_serial_no

select title,writer,writeymd from faq

select memid,memname,membirth,memregist from member order by memregist desc;

select * from category


select * from product

insert into category values ('001','소설');

insert into category values ('2','시');

insert into category values ('3','소설');

insert into product values (1, '나미야 잡화점의 기적', '', 14800, 'sample.png', 'sample.png', '001', sysdate);
insert into product values (2, '오베라는 남자', '', 13200, 'beethoven.png', 'beethoven.png', '001', sysdate);
insert into product values (3, '허즈버드 시크릿', '', 14500, 'elizabeth.png', 'elizabeth.png', '001', sysdate);
insert into product values (4, '마션', '', 15000, 'gauss.png', 'gauss.png', '001', sysdate);
insert into product values (5, '살인자의 기억', '', 11200, 'gogh.png', 'gogh.png', '001', sysdate);
insert into product values (6, '지금 이 순간', '', 13500, 'newton.png', 'newton.png', '001', sysdate);
commit;