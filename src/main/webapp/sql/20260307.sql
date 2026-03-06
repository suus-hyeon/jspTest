/* 도서관리 프로젝트에 사용하는 테이블 설계 */
	
/* 책(books)테이블 */
create table books (
  bookid    int  not null  auto_increment,  /* 책 고유번호 */
  bookname  varchar(20) not null,           /* 책 이름 */
  publisher varchar(20) not null,           /* 출판사 명 */
  price     int default 0,                  /* 책 가격 */
  primary key(bookid)
);

INSERT INTO books VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO books VALUES(2, '축구아는 여자', '나무수', 13000);
INSERT INTO books VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO books VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO books VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO books VALUES(6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO books VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO books VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO books VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO books VALUES(10, 'Olympic Champions', 'Pearson', 13000);
INSERT INTO books VALUES(11, '가나다', '삼성당', 17500);
INSERT INTO books VALUES(12, '포토샵CS6', '제우미디어', 25000);
INSERT INTO books VALUES(13, '아시안게임 이야기', '스포츠북', 19500);
INSERT INTO books VALUES(14, '우리들 이야기', '우리출판사', 5000);
INSERT INTO books VALUES(15, '서로 사랑하자', '이상미디어', 18000);
INSERT INTO books VALUES(16, '하나된 마음으로', '대한미디어', 21000);
INSERT INTO books VALUES(17, '나눌수 있을때', '나무수', 9000);
INSERT INTO books VALUES(18, '함박눈 내리는날', '이상미디어', 15000);
INSERT INTO books VALUES(19, '나보다 축구를', '굿스포츠', 23000);
INSERT INTO books VALUES(20, '시작했을때 한번더', '삼성당', 19000);

  
  -- 고객 테이블
create table customer (
  custid   int  not null  auto_increment,   /* 고객 고유번호 */
  name     varchar(20) not null,            /* 고객명 */
  address  varchar(20) not null,            /* 고객 기본주소 */
  phone    varchar(15),                     /* 고객 연락처 */
  primary key(custid) 
);

desc customer;

INSERT INTO customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');  
INSERT INTO customer VALUES (3, '김말숙', '대한민국 강원도', '000-7000-0001');
INSERT INTO customer VALUES (4, '손흥민', '영국 토트넘', '000-8000-0001');
INSERT INTO customer VALUES (5, '박세리', '대한민국 대전',  '001-0011-0012');
INSERT INTO customer VALUES (6, '이순신', '대한민국 아산',  '001-0009-0007');
INSERT INTO customer VALUES (7, '소나무', '대한민국 청주',  '000-1100-0050');

-- 주문테이블
create table orders (
  orderid   int  not null  auto_increment,  /* 주문 고유번호 */
  custid    int  not null,                  /* 고객의 고유번호 */
  bookid    int  not null,                  /* 책의 고유번호 */
  saleprice int  default 0,                 /* 책 할인 가격 */
  orderdate datetime  default now(),        /* 책 주문날짜 */
  primary key(orderid),
  foreign key(custid) references customer(custid) on update cascade on delete restrict,
  foreign key(bookid) references books(bookid) on update cascade on delete restrict
);
  
INSERT INTO orders VALUES (1, 1, 1, 6000, '2019-08-01'); 
INSERT INTO orders VALUES (2, 1, 3, 21000, '2018-09-03');
INSERT INTO orders VALUES (3, 2, 5, 8000, '2022-11-03'); 
INSERT INTO orders VALUES (4, 3, 6, 6000, '2020-06-04'); 
INSERT INTO orders VALUES (5, 4, 7, 19000, '2019-11-05');
INSERT INTO orders VALUES (6, 1, 2, 12000, '2021-09-07');
INSERT INTO orders VALUES (7, 4, 8, 11000, '2019-03-07');
INSERT INTO orders VALUES (8, 3, 10, 12000, '2021-07-08');
INSERT INTO orders VALUES (9, 2, 10, 9000, '2017-05-09');
INSERT INTO orders VALUES (10, 3, 18, 13000, '2023-10-11');
INSERT INTO orders VALUES (11, 7, 15, 15000, '2023-06-17');
INSERT INTO orders VALUES (12, 7, 20, 16000, '2023-12-19');
INSERT INTO orders VALUES (13, 3, 19, 23000, '2023-06-30');
INSERT INTO orders VALUES (14, 1, 16, 17000, '2023-11-21');
INSERT INTO orders VALUES (15, 4, 15, 13000, '2023-05-12');
INSERT INTO orders VALUES (16, 7, 10, 13000, '2025-09-24');
INSERT INTO orders VALUES (17, 1, 12, 23000, '2025-02-26');
INSERT INTO orders VALUES (18, 2, 11, 13000, '2025-09-16');
INSERT INTO orders VALUES (19, 4, 20, 13000, '2026-03-20');
INSERT INTO orders VALUES (20, 4, 15, 20000, '2026-04-26');
  
select * from books;
select * from customer;
select * from orders order by custid;

drop table books;
drop table customer;
drop table orders;

delete from orders;

-- 도서테이블의 있는 모든 출판사를 검색하시오(단, 같은 출판사의 정보는 1회만 출력하시오)
select distinct publisher from books;

-- 도서이름 두번째 글자뒤에 '구'로 끝나는 문자열을 갖는 도서를 출력?
select * from books where bookName like '_구%';

-- 박지성(custid=1)고객이 주문한 도서의 총 판매액, 평균, 최고, 최저 도서금액을 구하시오.
select * from orders where custid=1;
select sum(saleprice),format(avg(saleprice),0),max(saleprice),min(saleprice) from orders where custid=1;

-- 고객별로 주문한 도서의 총 수량과 총 판매액을 구하시오
select custId, count(*), sum(saleprice) from orders group by custId; 

-- 고객별로 주문한 도서의 총 수량과 총 판매액을 구하시오(구매 날짜순으로)
select custId, orderdate as 구매날짜 from orders order by orderdate;
select custId, orderdate as 구매날짜, count(*), sum(saleprice) from orders group by custId, orderdate order by orderdate; 

-- 1번이상 구매한 책들의 정보?(구매날짜순 출력, 같은책은 1번씩만 출력)
select * from orders;
select distinct bookid from orders order by bookid;
select * from orders group by bookid;

-- 1번이상 구매한 책들의 정보?(구매날짜순 출력, 같은책은 1번씩만 출력, 책이름)
select o.orderid,o.custid,b.bookid,b.bookname from orders o, books b where o.bookid=b.bookid group by b.bookid order by o.orderdate;

-- 1번이상 구매한 책들의 정보?(구매날짜순 출력, 같은책은 1번씩만 출력)
select o.orderid, o.orderdate, b.bookname, b.price, o.saleprice
  from orders o, books b
  where o.bookid=b.bookid group by b.bookid order by o.orderdate;

-- '책을 구매한 사람의 이름/책이름/구매가격/구매날짜'를 모두출력?

select c.name, b.bookname, o.saleprice, o.orderdate from orders o, books b, customer c
	where o.bookid=b.bookid and o.custid=c.custid;
    
select c.name, b.bookname, o.saleprice, o.orderdate from orders o, books b, customer c
	where o.bookid=b.bookid and o.custid=c.custid order by c.name;
    
select o.*,c.name from orders o, customer c where o.custid=c.custid order by orderdate desc;

select o.*,c.name,b.bookname from orders o, customer c, books b where o.custid=c.custid and o.bookid=b.bookid order by orderdate desc;

-- '책을 구매한 사람의 이름/책이름/구매가격/구매날짜'를 모두출력?
-- 단, 구매자가 구매한 책의 권수를 함께 출력


-- '책을 구매한 사람의 이름/책이름/구매가격/구매날짜'를 모두출력?
-- 단, 구매자가 구매한 책의 '총개수,총가격,총가격평균'을  함께 출력


-- '책을 구매한 사람의 이름/책이름/구매가격/구매날짜'를 모두출력?
-- 단, 구매자가 구매한 책의 '총개수,총가격,총가격평균'을  함께 출력
-- 단, 구매한 책이 4권 이상인 자료만 출력?


-- '출판사'가 '굿스포츠' 혹은 '대한미디어'인 도서를 검색하시오?


-- '출판사'가 '굿스포츠' 혹은 '대한미디어'가 아닌 도서를 검색하시오?


-- '축구' 또는 '야구'에 관한 도서중 가격이 2만원 이상인 도서의 '도서명, 가격, 출판사명' 출력?


-- 2023년에만 구매된 책들을 출력?


-- 2023년에 가장 많이 판매된 책을 출력?


-- 2023년 5월 1일부터 최근까지 판매된 책?(최근 내림차순 출력)


-- 각 고객별로 주문한 도서의 총 판매액을 출력하되, 고객 이름순으로 출력하시오(고객명, 총판매액 출력)


-- 도서를 구매를 하든지, 구매하지 않던지, 모든 고객들의 이름과 구매한 도서명과 구매가격?