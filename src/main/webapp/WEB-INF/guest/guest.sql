show tables;

create table guest (
	idx  int not null auto_increment primary key, /* 방명록 고유번호 */
	name varchar(20) not null,  									/* 방명록 작성자 성명 */
	content text not null, 										    /* 방명록 글 내용 */
	email varchar(60),														/* 방문자의 메일주소 */
	homePage varchar(60),													/* 홈페이지주소(블로그 주소 / 유튜브) */
	visitDate datetime default now(),             /* 방문일자 */
	clientIp varchar(30) not null  							/* 방문자의 접속 IP */
);
drop table guest;
desc guest;

insert into guest values (default,'관리자','방명록 서비스를 시작합니다.','rrlatngus74@naver.com','abc',default,'192.168.50.61');

select * from guest;
select * from guest order by idx desc;
select * from guest order by idx desc limit 5;
select * from guest order by idx desc limit 0, 3;
