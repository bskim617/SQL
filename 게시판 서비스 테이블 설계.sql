#날짜 : 2022/10/18
#이름 : 김보성
#내용 : 게시판 서비스 테이블 설계

#데이터베이스 생성
CREATE DATABASE `java1_board`;
CREATE USER 'java1_board'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `java1_board`.* TO 'java1_board'@'%';
FLUSH PRIVILEGES;

#회원 테이블 생성
java1_boardCREATE TABLE `board_user` (
	`uid`   VARCHAR(20) PRIMARY KEY,
	`pass`  VARCHAR(255),
	`name`  VARCHAR(20),
	`nick`  VARCHAR(20) UNIQUE,
	`email` VARCHAR(100) UNIQUE,
	`hp`    CHAR(13) UNIQUE,
	`grade` TINYINT DEFAULT 2,
	`zip`   CHAR(5),
	`addr1` VARCHAR(255),
	`addr2` VARCHAR(255),
	`regip` VARCHAR(100),
	`rdate` DATETIME
);

#약관 테이블 생성
CREATE TABLE `board_terms` (
	`terms`		TEXT, 
	`privacy`	TEXT
);

#게시물 테이블 생성
java1_boardCREATE TABLE `board_article` (
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT NOT NULL,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20) NOT NULL,
	`regip`		VARCHAR(100) NOT NULL,
	`rdate` 		DATETIME NOT NULL
);

#파일 테이블 생성
CREATE TABLE `board_file` (
	`fno`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT,
	`newName`	VARCHAR(255),
	`oriName` 	VARCHAR(255),
	`download`	INT DEFAULT 0,
	`rdate` 		DATETIME
);


SELECT a.*, b.`nick` FROM `board_article` AS a
JOIN `board_user` AS b ON a.uid = b.uid
ORDER BY `no` DESC
LIMIT 10, 10;

SELECT COUNT(`no`) FROM `board_article`;

INSERT INTO `board_article` (`title`, `content`, `uid`, `regip`, `rdate`)
SELECT `title`, `content`, `uid`, `regip`, `rdate` FROM `board_article`;
