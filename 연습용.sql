#날짜 2022/08/24
#이름 김보성
#내용 연습용

#1장
#테이블 만들기
create table `User1`(
	`uid` varchar(10),
    `name` varchar(10),
    `hp` char(13),
    `age` int
);

#테이블 삭제
drop table `User1`;

#데이터 추가
insert into `User1` values ('A101', '김유신', '010-1234-1111', 25);
insert into `User1` values ('A102', '김춘추', '010-1234-2222', 23);
insert into `User1` values ('A103', '장보고', '010-1234-3333', 32);
insert into `User1` (`uid`,`name`,`age`) values ('A104', '장보고', 45);
insert into `User1` set `uid`='A105', `name`='이순신', `hp`='010-1234-4444';

#데이터 조회
select * from `User1`;
select * from `User1` where `uid`='A101';
select * from `User1` where `name`='김춘추';
select * from `User1` where `age`<30;
select * from `User1` where `age`>=30;
select `uid`,`name`,`age` from `User1`;

#데이터 수정
update `User1` set `hp`='010-1234-5555' where `uid`='A104';
update `User1` set `age`=51 where `uid`='A105';
update `User1` set `hp`='010-1234-1001',`age`=27 where `uid`='A101';

#데이터 삭제
delete from `user1` where `uid`='A101';
delete from `user1` where `uid`='A102' and `age`=25;
delete from `user1` where `age`>=30;

#1장 연습문제
create table `TblUser`(
	`userid` varchar(10), 
    `userName` varchar(10), 
    `userHp` char(13), 
    `userAge` tinyint, 
    `userAddr` varchar(20)
);

create table `TblProduct` (
	`prdCode` int,
    `prdName` varchar(10),
    `prdPrice` int,
    `prdAmount` int,
    `prdCompany` varchar(10),
    `prdMakeDate` date
);

insert into `TblUser` values ('p101','김유신','010-1234-1001',25,'서울시 중구');
insert into `TblUser` values ('p102','김춘추','010-1234-1002',23,'부산시 금정구');
insert into `TblUser` (`userid`,`userName`,`userAge`,`userAddr`)values ('p103','장보고',31,'경기도 광주군');
insert into `TblUser` set `userid`='p104',`userName`='강감찬',`userAddr`='경남 창원시';
insert into `TblUser` (`userid`,`userName`,`userHp`,`userAge`)values ('p105','이순신','010-1234-1005',50);

insert into `TblProduct` values (1,'냉장고',800,10,'LG','2022-01-06');
insert into `TblProduct` values (2,'노트북',1200,20,'삼성','2022-01-06');
insert into `TblProduct` values (3,'TV',1400,6,'LG','2022-01-06');
insert into `TblProduct` values (4,'세탁기',1000,8,'LG','2022-01-06');
insert into `TblProduct` (`prdCode`,`prdName`,`prdPrice`,`prdAmount`) values (5,'컴퓨터',1100,0);
insert into `TblProduct` values (6,'휴대폰',900,102,'삼성','2022-01-06');

select * from `Tbluser`;
select `userName` from `Tbluser`;
select `userName`, `userHp` from `Tbluser`;
select * from `Tbluser` where `userid` = 'p102';
select * from `Tbluser` where `userid` = 'p104' or `userid` = 'p105';
select * from `Tbluser` where `userAge` > 30;
select * from `Tbluser` where `userHp` is null;
select * from `Tbluser` where `userAddr` = '신라';
update	`TblUser` set `userAge`=42 where `userid` = 'p104';
update	`TblUser` set `userAddr`='경남 김해시' where `userid` = 'p105';
delete from `TblUser` where `userid` = 'p103';

select * from `TblProduct`;
select `prdName` from `TblProduct`;
select `prdName`, `prdPrice` from `TblProduct`;
select * from `TblProduct` where `prdCompany` = 'LG';
select * from `TblProduct` where `prdCompany` = '삼성';
update `Tblproduct` set `prdCompany`='삼성',
						`prdMakeDate`='2021-01-01'
                        where `prdCode`=5;

#2022/08/25                        
#2장
create table `User2`(`uid` varchar(10) primary key, 
					 `name`varchar(10), 
                     `hp` char(13),
                     `age` int
);

insert into `User2` values ('a103', '김유신', '010-1234-1003', 25);
insert into `User2` values ('a102', '김춘추', '010-1234-1002', 23);

create table `User3` (
	`uid`	varchar(20) primary key,
    `name`	varchar(10),
    `hp`	char(13) unique,
    `age`	tinyint
);

insert into `User3` values ('a103', '김유신', '010-1234-1003', 25);
insert into `User3` values ('a102', '김춘추', '010-1234-1002', 23);

