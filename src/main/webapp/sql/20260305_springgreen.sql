-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.44 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- springgreen 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `springgreen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `springgreen`;

-- 테이블 springgreen.gkdl 구조 내보내기
CREATE TABLE IF NOT EXISTS `gkdl` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.gkdl:~0 rows (대략적) 내보내기
DELETE FROM `gkdl`;

-- 테이블 springgreen.hoewon 구조 내보내기
CREATE TABLE IF NOT EXISTS `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hoewon:~6 rows (대략적) 내보내기
DELETE FROM `hoewon`;
INSERT INTO `hoewon` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 25, '남자', '서울'),
	(2, '김말숙', 33, '여자', '청주'),
	(3, '이기자', 39, '남자', '제주'),
	(6, '아톰', 22, '여자', '서울'),
	(7, '씨톰', 20, '여자', '서울'),
	(9, '디톰', 20, '여자', '제주');

-- 테이블 springgreen.insa 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa:~25 rows (대략적) 내보내기
DELETE FROM `insa`;
INSERT INTO `insa` (`idx`, `name`, `age`, `gender`, `ipsail`) VALUES
	(1, '홍길동', 20, '남자', '2026-01-23 13:50:13'),
	(2, '김말숙', 20, '여자', '2026-01-23 13:50:14'),
	(3, '김연아', 20, '여자', '2026-01-23 13:50:15'),
	(4, '홍길순', 33, '여자', '2020-05-06 00:00:00'),
	(6, '감나무', 15, '남자', '2022-09-04 00:00:00'),
	(7, '캥캥캥', 55, '여자', '2002-12-02 00:00:00'),
	(8, '안냥', 16, '남자', '2007-10-13 00:00:00'),
	(9, '신짱구', 5, '남자', '2000-05-27 00:00:00'),
	(10, '흰둥이', 89, '남자', '2017-10-28 00:00:00'),
	(11, '포도', 30, '남자', '2002-04-30 00:00:00'),
	(12, '구름', 97, '남자', '2022-11-01 00:00:00'),
	(13, '멍멍이', 64, '남자', '2008-08-27 00:00:00'),
	(14, '돈나무', 51, '여자', '2009-05-29 00:00:00'),
	(15, '신형만', 60, '남자', '2020-08-28 00:00:00'),
	(16, 'atom', 63, '여자', '2005-11-27 00:00:00'),
	(17, '공놀이', 21, '남자', '2020-10-04 00:00:00'),
	(18, '퐁퐁', 11, '남자', '2008-04-05 00:00:00'),
	(19, '물놀이', 61, '남자', '2003-09-03 00:00:00'),
	(20, '귀여미', 88, '여자', '2008-09-19 00:00:00'),
	(21, '콩콩이', 42, '여자', '2021-10-30 00:00:00'),
	(22, '왈왈', 17, '남자', '2004-04-04 00:00:00'),
	(23, '뿡뿡이', 58, '여자', '2010-05-29 00:00:00'),
	(24, '홍홍', 81, '남자', '2010-04-29 00:00:00'),
	(25, '노홍철', 57, '남자', '2008-11-03 00:00:00'),
	(26, '수수깡', 99, '남자', '2000-03-18 00:00:00');

-- 테이블 springgreen.insa2 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(50) DEFAULT 'noimage.jpg',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa2:~0 rows (대략적) 내보내기
DELETE FROM `insa2`;

-- 테이블 springgreen.jproduct 구조 내보내기
CREATE TABLE IF NOT EXISTS `jproduct` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jproduct:~0 rows (대략적) 내보내기
DELETE FROM `jproduct`;

-- 테이블 springgreen.mariri 구조 내보내기
CREATE TABLE IF NOT EXISTS `mariri` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.mariri:~0 rows (대략적) 내보내기
DELETE FROM `mariri`;

-- 테이블 springgreen.salary 구조 내보내기
CREATE TABLE IF NOT EXISTS `salary` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `code` char(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `department` varchar(10) NOT NULL,
  `position` varchar(10) NOT NULL,
  `overtime` int DEFAULT '0',
  `netpay` int NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.salary:~4 rows (대략적) 내보내기
DELETE FROM `salary`;
INSERT INTO `salary` (`idx`, `code`, `name`, `department`, `position`, `overtime`, `netpay`) VALUES
	(1, 'ID01', '홍길동', '인사과', '대리', 5, 1935000),
	(2, 'CD02', '감나무', '총무과', '대리', 7, 1989000),
	(3, 'CB01', '김릴라', '총무과', '부장', 8, 2916000),
	(4, 'CB02', '강강술래', '총무과', '부장', 5, 2835000);

-- 테이블 springgreen.study 구조 내보내기
CREATE TABLE IF NOT EXISTS `study` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.study:~0 rows (대략적) 내보내기
DELETE FROM `study`;
INSERT INTO `study` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, 'rrr', 55, '여자', 'dd');

-- 테이블 springgreen.test 구조 내보내기
CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test:~12 rows (대략적) 내보내기
DELETE FROM `test`;
INSERT INTO `test` (`name`, `age`, `gender`, `ipsail`, `address`) VALUES
	('김장미', 20, '여자', '2026-01-15 20:23:23', '서울'),
	('홍길동', 20, '남자', '2026-01-15 20:23:23', '청주'),
	('강감찬', 50, '남자', '2026-01-15 20:23:23', '제주'),
	('가나다', 35, '남자', '2000-10-01 00:00:00', '광주'),
	('소나무', 34, '남자', '2023-06-25 00:00:00', '울산'),
	('이순신', 42, '남자', '2024-09-09 00:00:00', '서울'),
	('오하늘', 58, '여자', '2000-02-01 00:00:00', '청주'),
	('강감찬', 50, '남자', '2026-01-16 09:00:40', '제주'),
	('가나다', 20, '남자', '2000-10-01 00:00:00', '서울'),
	('소나무', 34, '여자', '2023-05-05 00:00:00', '청주'),
	('이순신', 54, '남자', '2024-05-03 00:00:00', '울산'),
	('오하늘', 73, '여자', '2000-12-10 00:00:00', '광주'),
	('오하늘', 73, '여자', '2000-12-10 00:00:00', '광주');

-- 테이블 springgreen.test2 구조 내보내기
CREATE TABLE IF NOT EXISTS `test2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) NOT NULL DEFAULT '남자',
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test2:~11 rows (대략적) 내보내기
DELETE FROM `test2`;
INSERT INTO `test2` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 20, '남자', NULL),
	(2, '김말숙', 20, '여자', ''),
	(4, '김연아', 29, '남자', '서울'),
	(5, '소나무', 55, '남자', '청주'),
	(6, '가나다', 39, '여자', '서울'),
	(7, '김자자', 25, '여자', '광주'),
	(8, '강노노', 60, '남자', '제주'),
	(9, '감나무', 15, '여자', '광주'),
	(10, '반갑다', 22, '여자', '안산'),
	(13, '아이고', 34, '여자', '서울'),
	(16, '연습맨', 20, '남자', NULL),
	(17, '연습맨', 20, '남자', NULL),
	(18, '연습맨2', 39, '여자', '청주');

-- 테이블 springgreen.test3 구조 내보내기
CREATE TABLE IF NOT EXISTS `test3` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test3:~2 rows (대략적) 내보내기
DELETE FROM `test3`;
INSERT INTO `test3` (`idx`, `mid`, `name`, `age`) VALUES
	(1, 'hks1234', '홍길순', 22),
	(2, 'hkd1234', '홍길동', 25),
	(3, 'lkj1234', '이기자', 22);

-- 테이블 springgreen.test4 구조 내보내기
CREATE TABLE IF NOT EXISTS `test4` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `bookName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `mid` (`mid`),
  CONSTRAINT `test4_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `test3` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test4:~2 rows (대략적) 내보내기
DELETE FROM `test4`;
INSERT INTO `test4` (`idx`, `mid`, `bookName`, `price`) VALUES
	(1, 'lkj1234', '노인과바다', 10000),
	(2, 'hkd1234', '노인저편', 25000),
	(3, 'hkd1234', '노인저편', 25000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
