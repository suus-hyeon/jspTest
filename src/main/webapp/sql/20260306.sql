-- ------------------학생테이블--------------------
create table students (
  hakbun int not null,
  name   varchar(10) not null,
  age    int default 20,
  score  int
);

desc students;
drop table students;
delete from students;

insert into students values (101,'홍길동',20, 85);
insert into students values (102,'이순신',21, 73);
insert into students values (103,'임꺽정',20, 59);
insert into students values (104,'장보고',21, 92);
insert into students values (105,'홍길동',20, 63);
insert into students values (106,'김연아',23, 88);
insert into students values (107,'오하늘',23, 81);
insert into students values (108,'강감찬',24, 95);

select * from students;

-- students테이블의 name필드와 age필드를 포함한 레코드를 모두 출력?
select name, age from students;

-- students테이블의 name필드와 age필드를 보여주되, 나이가 20살 초과인 학생을 보여주시오?
select name, age from students where age > 20;

-- students테이블의 나이가 21살이 아닌 학생들의 정보를 보여주시오?
select * from students where age != 21;
select * from students where age <> 21;

-- students테이블의 나이가 21상이상 22살 이하인 학생을 보여주시오?(between ~ and)
select * from students where age >= 21 and age <= 23;
select * from students where age between 21 and 23;

-- students테이블의 나이가 20살 또는 21살 또는 23살인 학생을 보여주시오(in연산자)
select * from students where age = 20 or age = 21 or age = 23;
select * from students where age in (20,21,23);

-- students테이블의 나이가 20살 또는 21살 또는 22살이 아닌 학생을 보여주시오
select * from students where age not in (20,21,22);

-- '성'과 '이름'을 분리해서 출력하시오(substring ~에서부터 ~개 가져와라, 하나만 쓰면 나머지 가져옴)
select *, substring(name,1,1), substring(name,2) from students;
select *, left(name,1), substring(name, 2) from students;

-- 앞에서 분리한 '성'과 '이름'을 다시 결합 후 '성명'이란 필드명으로 출력하시오.(concat())
select *, left(name,1), substring(name, 2), concat(left(name,1), substring(name, 2)) as 성명 from students;

-- 앞에서 분리한 '성'과 '이름'중간에 공백을 한칸 넣어서 다시 결합 후 '성명'이란 필드명으로 출력하시오.(concat())
select *, left(name,1), substring(name, 2), concat(left(name,1),' ',substring(name, 2)) as 성명 from students;
select *, left(name,1), substring(name, 2), concat(left(name,1),space(2),substring(name, 2)) as 성명 from students;

-- 합치기 : Oracle : -> '||' , MS SQL -> '+'

-- ------------------과목테이블--------------------

create table kwamok (
  code  int  not null
);
desc kwamok;
drop table kwamok;

insert into kwamok values (201);
insert into kwamok values (202);
insert into kwamok values (203);
insert into kwamok values (204);
insert into kwamok values (205);

select * from kwamok;

-- 과목코드옆에 '과목명'필드를 만들어주되, code가 201은 '수학'으로, 202는 '과학', 203은 '컴퓨터', 나머지는 '교양'으로 출력처리
select code,
  case
    when code=201 then '수학'
    when code=202 then '과학'
    when code=203 then '컴퓨터'
    else '교양'
    end as 과목명
  from kwamok;
  
select code,
  case code
    when 201 then '수학'
    when 202 then '과학'
    when 203 then '컴퓨터'
    else '교양'
    end as 과목명
  from kwamok;

-- jumun 테이블 ---------------------

create table jumun (
  no  int not null,
  ilja datetime default now()
);
delete from jumun;
drop table jumun;

insert into jumun values (101, '2026-3-2');
insert into jumun values (102, '2026-3-9');
insert into jumun values (103, '2026-3-12');
insert into jumun values (104, '2026-4-1');
insert into jumun values (105, '2026-4-6');
insert into jumun values (106, '2026-4-30');
insert into jumun values (107, '2026-5-22');

select * from jumun;

-- 주문일자가 2026년 4월달 이전인 자료 출력?
select * from jumun where ilja < '2026-4-1';

-- 주문일자가 2026년 4월달인 자료 출력?
select * from jumun where ilja between '2026-4-1' and '2026-4-30';

-- products 테이블 --------------------------
create table products (
  productName varchar(20) not null,
  price  int
);

insert into products values ('진라면', 1300);
insert into products values ('새우탕면', 1100);
insert into products values ('너구리', 1800);
insert into products values ('틈새라면', 1200);
insert into products values ('비빔면', 1500);
insert into products values ('안성탕면', 1000);
insert into products values ('라면시대', 1900);
insert into products values ('신_라면', 2200);

select * from products;
-- % : 모든문자 대변, _ : 1개문자를 대변

-- 상품명에 '면'으로 끝나는 모든제품 출력
select * from products where productName like '%면';

-- 상품명에 '라면'으로 시작되는 모든제품 출력
select * from products where productName like '라면%';

-- 상품명에 '라면'이 들어있는 모든제품 출력?
select * from products where productName like '%라면';

-- 상품명이 3글자중에서 2번째 글자가 '라'자가 들어있는 제품?
select * from products where productName like '_라_';

-- 상품명이 '_라면'으로 끝나는 자료만 출력?
select * from products where productName like '%\_라면';

-- jobs 테이블 --------------------------
create table jobs (
  no  int not null,
  job varchar(10)
);

insert into jobs values (1, default);
insert into jobs values (2, '공무원');
insert into jobs values (3, '회사원');
insert into jobs values (4, '학생');
insert into jobs values (5, default);
insert into jobs values (6, '자영업');
insert into jobs values (7, default);

select * from jobs order by no desc;

-- 직업이 null 인 자료만 출력?(is null)
select * from jobs where job = null order by no desc; -- (X)
select * from jobs where job is null order by no desc; -- (O)
select * from jobs where job is not null order by no desc; -- (O)

-- 직업이 기재된 자료의 전체수는?
select count(*) from jobs;
select count(*) from jobs where job is not null;

-- jikwon 테이블 -------------------------
create table jikwon (
  no  int not null,
  buseo varchar(10) not null,
  pay  int,
  bonus int
);

drop table jikwon;

insert into jikwon values (101, '인사', 800, 100);
insert into jikwon values (102, '개발', 1200, 20);
insert into jikwon values (103, '기획', 1200, 0);
insert into jikwon values (104, '개발', 1300, 30);
insert into jikwon values (105, '개발', 1100, 50);
insert into jikwon values (106, '인사', 900, 0);
insert into jikwon values (107, '기획', 1400, 20);
insert into jikwon values (108, '인사', 1200, 50);
insert into jikwon values (109, '인사', 1100, 0);
insert into jikwon values (110, '기획', 700, 100);

select * from jikwon;

-- 집계함수 : sum(), avg(), count(), max(), min() ... : group by ~ having ~

-- 직원들의 '평균급여'를 구하시오. 필드명은 '평균급여'로 출력하시오.(합계, 최대, 최소, 건수)
select buseo, avg(pay) as 평균급여 from jikwon group by buseo;
select buseo, sum(pay) as 전체급여 , avg(pay) as 평균급여 , max(pay) as 최대급여 , min(pay) as 최소급여 , count(pay) as 건수 from jikwon group by buseo;

 -- 앞의 결과에 천단위 쉼표표시, 소수이사 버리기(format())
select buseo, format(avg(pay), 0) as 평균급여 from jikwon group by buseo;

 -- 앞의 결과에 평균급여가 1000 초과인 자료만 출력
select buseo, format(avg(pay), 0) as 평균급여 from jikwon group by buseo having avg(pay) > 1000;

 -- 앞의 결과에서 '기획'부서 자료만 출력
select buseo, format(avg(pay), 0) as 평균급여 from jikwon where buseo='기획' group by buseo having avg(pay) > 1000;

-- 부서별 평균급여를 출력하되 평균급여가 1000원 이상하는 자료중 '기획'부서외의 자료만 출력
select buseo, format(avg(pay), 0) as 평균급여 from jikwon where buseo!='기획' group by buseo having avg(pay) >= 1000;

-- 부서별 평균급여를 출력하되 평균급여가 1000원 이상하는 자료중 '기획'부서외의 자료만 평균급여 내림차순 출력
select buseo, format(avg(pay), 0) as 평균급여 from jikwon where buseo!='기획' group by buseo having avg(pay) >= 1000 order by avg(pay) desc;
select buseo, format(avg(pay), 0) as 평균급여 from jikwon where buseo!='기획' group by buseo having avg(pay) >= 1000 order by 평균급여 desc;

-- 정규화로 분리된 테이블을 join으로 검색처리
create table buseos (
  buseoId int not null primary key,
  buseoName varchar(10) not null,
  jiyuk  varchar(10) not null
);
drop table buseos;

insert into buseos values (10, '인사', '서울');
insert into buseos values (20, '개발', '부산');
insert into buseos values (30, '마케팅', '서울');

select * from buseos;

-- jikwons테이블 생성
create table jikwons (
  id  int not null primary key,
  name varchar(10) not null,
  buseoId int not null,
  foreign key (buseoId) references buseos(buseoId)
);
drop table jikwons;

insert into jikwons values (101, '홍길동', 10);
insert into jikwons values (102, '김말숙', 20);
insert into jikwons values (103, '이기자', 10);

select * from jikwons;

-- 일반조인(Inner join)
-- 각 직원들의 이름과 부서명을 출력
select name, buseoName from buseos join jikwons on jikwons.buseoId = buseos.buseoId;
select name, buseoName from buseos b join jikwons j on j.buseoId = b.buseoId;
select name, buseoName from buseos b, jikwons j where j.buseoId = b.buseoId;
-- 앞의 경우처럼 참조하는 필드명이 같을경우 using절로 대처할 수 있다.
select name, buseoName from buseos b join jikwons j using(buseoId);
select * from buseos natural join jikwons;

-- CROSS JOIN : 여러테이블의 발생할 수 있는 경우를 모두 처리
create table kwamoks (
  kwamokId int not null,
  kwamokName varchar(10) not null
);

insert into kwamoks values (1, '수학');
insert into kwamoks values (2, '과학');
insert into kwamoks values (3, '컴퓨터');

select * from students;
select * from kwamoks;

select s.hakbun, s.name, k.kwamokName from students s cross join kwamoks k;
select s.hakbun, s.name, k.kwamokName from students s , kwamoks k;

-- hakjum 테이블 생성
create table hakjum (
  grade char(1) not null,
  minScore int not null,
  maxScore int not null
);

insert into hakjum values ('A', 90, 100);
insert into hakjum values ('B', 80, 89);
insert into hakjum values ('C', 70, 79);
insert into hakjum values ('D', 60, 69);
insert into hakjum values ('F', 0, 59);

select * from hakjum;
select * from students;

-- 각 학생(students)별, '학점'테이블을 참고하여 학생이름과 점수와 학점을 출력하시오?
select s.name, s.score, h.grade from students s join hakjum h on s.score between h.minScore and h.maxScore;
select s.name, s.score, h.grade from students s, hakjum h where s.score between h.minScore and h.maxScore;

-- students2 테이블 --------------
create table students2 (
  hakbun int not null,
  name   varchar(10) not null,
  kwamokId int
);
delete from students2;

insert into students2 values (101, '홍길동', 1);
insert into students2 values (102, '이순신', 2);
insert into students2 values (103, '임꺽정', default);
insert into students2 values (103, '이기자', 2);

-- kwamok2테이블 생성?
create table kwamok2 (
  id  int not null,
  kwamokName varchar(10) not null
);

insert into kwamok2 values (1, '수학');
insert into kwamok2 values (3, '컴퓨터');

select * from students2;
select * from kwamok2;

-- 학생명을 모두 출력하되, 해당 학생이 수강하는 과목명을 출력하시오.
select s.name, k.kwamokName from students2 s, kwamok2 k where s.kwamokId = k.id;   -- (X)
select s.name, k.kwamokName from students2 s left join kwamok2 k on s.kwamokId = k.id;
select s.name, k.kwamokName from students2 s right join kwamok2 k on s.kwamokId = k.id;

-- Full Outer Join : Mysql에서는 지원하지 않음.
select s.name, k.kwamokName from students2 s cross join kwamok2 k;
-- select s.name, k.kwamokName from students2 s Full Outer Join kwamok2 k; (X)

-- sub Query ---------------------

-- jikmu 테이블 -----------------------
select * from buseos;

create table jikmu (
  buseoId  int not null,
  jikmuId  char(2) not null primary key,
  foreign key (buseoId) references buseos(buseoId)
);

insert into jikmu values (10, 'J1');
insert into jikmu values (20, 'J2');
insert into jikmu values (30, 'J3');

-- sawon테이블 -------------------
create table sawon(
  sabun int not null primary key,
  name  varchar(10) not null,
  pay   int,
  buseoId int not null,
  foreign key (buseoId) references buseos(buseoId)
);
drop table sawon;

insert into sawon values (101,'김사원',5000,10);
insert into sawon values (102,'김과장',6000,20);
insert into sawon values (103,'서대리',4000,10);
insert into sawon values (104,'이부장',7000,30);
insert into sawon values (105,'오과장',6500,30);

select * from sawon;
select * from buseos;
select * from jikmu;

-- 급여가 전체 평균급여보다 많이 받는 직원들의 '이름'과 '급여'를 출력?
-- 먼저 전체 급여평균
select format(avg(pay),0) from sawon;

select name, pay from sawon;
select name, pay from sawon where pay > avg(pay); -- (X)
select name, pay from sawon where pay > (select avg(pay) from sawon);

-- 앞의 직원들의 '이름'과 '급여'와 '직모코두'를 함께 출력하시오
select s.name, s.pay, j.jikmuId from sawon s, jikmu j where (s.buseoId = j.buseoId) and (pay > (select avg(pay) from sawon));

-- 부서가 '서울'지역인 곳에 다니는 직원의 이름은?
select * from buseos where jiyuk='서울';
select buseoId from buseos where jiyuk='서울';

select s.buseoId, b.jiyuk from buseos b, sawon s where b.buseoId = s.buseoId;
select s.buseoId, b.jiyuk from buseos b, sawon s where (b.buseoId = s.buseoId) and s.buseoId in (select buseoId from buseos where jiyuk='서울');
select distinct s.buseoId, b.jiyuk from buseos b, sawon s where (b.buseoId = s.buseoId) and s.buseoId in (select buseoId from buseos where jiyuk='서울');

-- 각 사원이 속한 성명, 부서명을 함께 출력하시오.
select buseoId, buseoName from budeos;
select s.name, b.buseoId, b.buseoName as 부서명 from sawon s, buseos b where (s.buseoId = b.buseoId);
select s.name, (select buseoName from buseos b where b.buseoId=s.buseoId ) as 부서명 from sawon s; -- 스칼라 서브쿼리 
 
 -- 인라인 뷰(view) : 뷰의 장점: 논리적형태로 실제 존재하지 않음. 보안성(노출안됨), 독립성(구조변경시 일관성 유지), 편의성(별명사용시 쿼리 단순화)
 -- '서울'지역에 존재하는 부서에 근무하는 직원들의 이름과 해당 부서명을 출력하시오
 select s.name, b.buseoName from sawon s, (select buseoId, buseoName from buseos where jiyuk='서울') as b where s.buseoId=b.buseoId;
 select s.name, b.buseoName from sawon s, buseos b where (s.buseoId=b.buseoId) and b.jiyuk='서울';
 
-- 사원테이블에서 같은 부서의 월급이 해당부서의 최고월급보다 작은 사람들을 조회해보자.(성명, 급여)
select max(s2.pay) from sawon s2 where s2.buseoId=10;
select s.name, s.pay from sawon s1 where s1.pay < (select max(s2.pay) from sawon s2 where s2.buseoId=s1.buseoId);

-- 집합연산자 (합집합, 교집합, 차집합)
-- students3테이블 만든다.
create table students3 (
  name  varchar(10) not null,
  hakbun int not null primary key,
  major  varchar(10) not null  /* 전공 */
);

insert into students3 values ('홍길동', 21, '컴퓨터');
insert into students3 values ('김말숙', 22, '경영');
insert into students3 values ('이기자', 24, '물리');

-- students4테이블 만든다.
create table students4 (
  name  varchar(10) not null,
  hakbun int not null primary key,
  major  varchar(10) not null  /* 전공 */
);

insert into students4 values ('김말숙', 22, '경영');
insert into students4 values ('김연아', 23, '교육');
insert into students4 values ('강감찬', 21, '물리');

select * from students3;
select * from students4;

-- 합집합 : UNION ALL - 중복허용
select name,hakbun,major from students3 union all select * from students4;

-- 합집합 : UNION ALL - 중복불허
select name,hakbun,major from students3 union select * from students4;

-- 교집합 : INTERSECT - 공통적인 자료 출력
select name,hakbun,major from students3 INTERSECT select * from students4;

-- ----------------------순위 구함(RANK() ~ over(정렬순서))-------------------------
/* 90, 90, 80, 70, 60, 60, 50
	RANK() : 1, 1, 3, 4, 5, 5, 7
    ROW_NUMBER() : 1,2,3,4,5,6,7
	DENSE_RANK() : 1, 1, 2, 3, 4, 4, 5
*/ 
create table sungjuks (
  idx   int not null primary key auto_increment,
  name  varchar(10) not null,
  jumsu int
);
drop table sungjuks;

insert into sungjuks values (default, '길동', 90);
insert into sungjuks values (default, '말숙', 80);
insert into sungjuks values (default, '철수', 90);
insert into sungjuks values (default, '영희', 60);
insert into sungjuks values (default, '민수', 60);
insert into sungjuks values (default, '수민', 50);
insert into sungjuks values (default, '수지', 70);

select * from sungjuks;

select *,rank() over (order by jumsu desc) as ranking from sungjuks;
select *,ROW_NUMBER() over (order by jumsu desc) as 순위 from sungjuks;
select *,DENSE_RANK() over (order by jumsu desc) as 순위 from sungjuks;

/*
	행간의 값 참조
    LAG() : 이전 행의 값을 참조
    LEAD() : 다음 행의 값을 참조
    FIRST_VALUE() : 정렬 기준 첫번째 값을 참조
    LAST_VALUE() : 정렬 기준 마지막번째 값을 참조
*/

-- 판매(panme2)테이블 생성
create table panme2 (
  nalja  datetime not null,
  jikwon varchar(10) not null,
  mechul  int
);
insert into panme2 values ('2026-3-1', '홍길동', 100);
insert into panme2 values ('2026-3-2', '홍길동', 200);
insert into panme2 values ('2026-3-3', '홍길동', 150);
insert into panme2 values ('2026-3-1', '김말숙', 300);
insert into panme2 values ('2026-3-2', '김말숙', 350);
insert into panme2 values ('2026-3-1', '이기자', 250);

select * from panme2;

-- 직원 오름차순으로 출력하되, 같은 직원의 경우는 마지막열에 이전(직전)매출을 표시하시오.
select *, LAG(mechul) over (PARTITION BY jikwon) from panme2;

-- 판매날짜 오름차순으로 출력하되, 같은 직원의 경우는 마지막열에 다음(직후)매출을 표시하시오.
select *, LAG(mechul) over (partition by jikwon order BY nalja) as 이전매출 from panme2;

-- 판매날짜 오름차순으로 출력하되, 같은 직원의 경우는 마지막열에 다음(직후)매출을 표시하시오.
select *, lead(mechul) over (partition by jikwon order BY nalja) as 다음매출 from panme2;

-- 판매날짜 오름차순으로 출력하되, 같은 직원의 경우는 마지막열에 해당직원의 첫 매출액을 표시하시오.
select *, first_value(mechul) over (partition by jikwon order BY nalja) as 처음매출 from panme2;

-- LAST_VALUE는 '범위지정' 키워드(ROWS between 시작 and ㄲ끝)
select *, Last_value(mechul) over (partition by jikwon order BY nalja ROWS between unbounded preceding and unbounded following) as 마지막매출 from panme2;

-- 범위지정 연산자를 이용하여 '이동평균(자신+앞+뒤)'값을 구하시오.
select *, avg(mechul) over (order by nalja rows between 1 preceding and 1 following) as 이동평균 from panme2;



 

