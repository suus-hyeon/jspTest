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

-- 테이블 springgreen.books 구조 내보내기
CREATE TABLE IF NOT EXISTS `books` (
  `bookid` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `price` int DEFAULT '0',
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.books:~20 rows (대략적) 내보내기
DELETE FROM `books`;
INSERT INTO `books` (`bookid`, `bookname`, `publisher`, `price`) VALUES
	(1, '축구의 역사', '굿스포츠', 7000),
	(2, '축구아는 여자', '나무수', 13000),
	(3, '축구의 이해', '대한미디어', 22000),
	(4, '골프 바이블', '대한미디어', 35000),
	(5, '피겨 교본', '굿스포츠', 8000),
	(6, '역도 단계별기술', '굿스포츠', 6000),
	(7, '야구의 추억', '이상미디어', 20000),
	(8, '야구를 부탁해', '이상미디어', 13000),
	(9, '올림픽 이야기', '삼성당', 7500),
	(10, 'Olympic Champions', 'Pearson', 13000),
	(11, '가나다', '삼성당', 17500),
	(12, '포토샵CS6', '제우미디어', 25000),
	(13, '아시안게임 이야기', '스포츠북', 19500),
	(14, '우리들 이야기', '우리출판사', 5000),
	(15, '서로 사랑하자', '이상미디어', 18000),
	(16, '하나된 마음으로', '대한미디어', 21000),
	(17, '나눌수 있을때', '나무수', 9000),
	(18, '함박눈 내리는날', '이상미디어', 15000),
	(19, '나보다 축구를', '굿스포츠', 23000),
	(20, '시작했을때 한번더', '삼성당', 19000);

-- 테이블 springgreen.buseos 구조 내보내기
CREATE TABLE IF NOT EXISTS `buseos` (
  `buseoId` int NOT NULL,
  `buseoName` varchar(10) NOT NULL,
  `jiyuk` varchar(10) NOT NULL,
  PRIMARY KEY (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.buseos:~2 rows (대략적) 내보내기
DELETE FROM `buseos`;
INSERT INTO `buseos` (`buseoId`, `buseoName`, `jiyuk`) VALUES
	(10, '인사', '서울'),
	(20, '개발', '부산'),
	(30, '마케팅', '서울');

-- 테이블 springgreen.customer 구조 내보내기
CREATE TABLE IF NOT EXISTS `customer` (
  `custid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.customer:~7 rows (대략적) 내보내기
DELETE FROM `customer`;
INSERT INTO `customer` (`custid`, `name`, `address`, `phone`) VALUES
	(1, '박지성', '영국 맨체스타', '000-5000-0001'),
	(2, '김연아', '대한민국 서울', '000-6000-0001'),
	(3, '김말숙', '대한민국 강원도', '000-7000-0001'),
	(4, '손흥민', '영국 토트넘', '000-8000-0001'),
	(5, '박세리', '대한민국 대전', '001-0011-0012'),
	(6, '이순신', '대한민국 아산', '001-0009-0007'),
	(7, '소나무', '대한민국 청주', '000-1100-0050');

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

-- 테이블 springgreen.guest 구조 내보내기
CREATE TABLE IF NOT EXISTS `guest` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `visitDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `clientIp` varchar(30) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.guest:~48 rows (대략적) 내보내기
DELETE FROM `guest`;
INSERT INTO `guest` (`idx`, `name`, `content`, `email`, `homePage`, `visitDate`, `clientIp`) VALUES
	(1, '관리자', '방명록 서비스를 시작합니다.', 'rrlatngus74@naver.com', 'abc', '2026-03-09 11:21:17', '192.168.50.61'),
	(5, '행복천', '행복천 다녀갑니다.\r\n오늘도 파이팅!!!! 아샤~~~', 'cjsk1126@naver.com', '', '2026-03-09 12:48:37', '192.168.50.20'),
	(6, '배유나', '이게뭐야', 'dd', '', '2026-03-09 12:48:43', '192.168.50.51'),
	(7, '뒷자리', '화이팅!', 'soohyenihyenihyeni', '', '2026-03-09 12:48:48', '192.168.50.65'),
	(8, '바우나', '바우나 내시경 이후 엽떡을 너무 많이 먹었다....', '', '', '2026-03-09 12:50:33', '192.168.50.53'),
	(9, '123123', '123123', '123123123', '', '2026-03-09 12:51:42', '192.168.50.69'),
	(11, 'sdf', 'sdfsdf', 'sdf', '', '2026-03-09 12:58:01', '192.168.50.61'),
	(12, '바우나', '바우나', '5959', '', '2026-03-09 12:58:21', '192.168.50.53'),
	(13, '왜안돼', 'sds', 'aaaaa', '', '2026-03-09 12:59:19', '127.0.0.1'),
	(14, 'sdf', 'sdfsdf', 'sdf', '', '2026-03-09 13:04:36', '127.0.0.1'),
	(15, '아톰', 'ggg', '', 'https://cjsk1126.tistory.com', '2026-03-09 13:06:46', '192.168.50.61'),
	(16, '캉캉', '깅깅', 'ggg@naver.com', 'https://gggd.affsdfs', '2026-03-09 14:19:55', '192.168.50.61'),
	(17, '전쟁선포?', '해킹이닷!!!!!!!!!!!!!!!', '', 'https://', '2026-03-09 14:25:16', '192.168.50.53'),
	(18, '하하하', 'ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ', '', 'https://', '2026-03-09 14:26:24', '192.168.50.53'),
	(19, '바우나', '바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나바바우우나나', '', 'https://', '2026-03-09 14:31:03', '192.168.50.53'),
	(20, '돈들어와라돈도돈돈', '돈이 들어와주세요 돈이 드러오아야해요 돈돈돈 돈 펑펑펑펑\r\n\r\n<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA2MThfMTg4%2FMDAxNjg3MDU4NjkxNzE2.EPnAsjcdKkkhwHOyJwbMClgodWUtvLJL-KD87MP4VJEg.-RVCDfe8Q98uOFYOdcI0ItQkk7qZv5pu3kcH5S51nyMg.JPEG.ahnjo67%2F2.jpg&type=a340" width="50px"/>', '', 'https://', '2026-03-09 14:33:47', '192.168.50.61'),
	(21, '홍길동', '바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현 <img src="https://pixabay.com/ko/images/download/x-10077647_1920.jpg"', '', 'https://', '2026-03-09 14:34:30', '192.168.50.53'),
	(22, '바우나', '바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현 https://www.shutterstock.com/image-photo/anime-artistic-image-totoro-large-260nw-2648579151.jpg', '', 'https://', '2026-03-09 14:36:48', '192.168.50.53'),
	(23, 'dndhk', '<marquee>우와!!!!!!!!!!!</marquee>', '', 'https://', '2026-03-09 14:43:19', '192.168.50.61'),
	(24, '바우나', '<marquee direction="up" width="300px" height="100px">위로이동</marquee>', '', 'https://', '2026-03-09 14:43:51', '192.168.50.53'),
	(25, '행복천', '<marquee direction="up" width="300px" height="100px"><img src="https://ogqmarket.img.sooplive.co.kr/sticker/16f23cb5eda44f0/23.png" width="100px"/></marquee>', '', 'https://', '2026-03-09 14:45:09', '192.168.50.20'),
	(26, '우왕!!!!!!!!', '<marquee direction="up" width="300px" height="100px"><img src="https://ogqmarket.img.sooplive.co.kr/sticker/16f23cb5eda44f0/23.png" width="100px"/></marquee>', '', 'https://', '2026-03-09 14:45:20', '192.168.50.61'),
	(27, '바우나', '<marquee direction="up" width="300px" height="100px"><img src="https://item.kakaocdn.net/do/9a94595008a86ae7d57b50b892101718617ea012db208c18f6e83b1a90a7baa7"width="200px"/></marquee>', '', 'https://', '2026-03-09 14:45:21', '192.168.50.53'),
	(28, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fstatic6.depositphotos.com%2F1000199%2F544%2Fi%2F950%2Fdepositphotos_5440719-stock-photo-sleeping-man-and-money-on.jpg&type=a340" width="200px"/>', '', 'https://', '2026-03-09 14:46:36', '192.168.50.53'),
	(29, '바우나', '<img src="<img src="https://www.shutterstock.com/image-photo/anime-artistic-image-totoro-large-260nw-2648579151.jpg" width="200px"/>" width="200px"/>', '', 'https://', '2026-03-09 14:48:13', '192.168.50.53'),
	(30, '바우나', '<img src="https://i.pinimg.com/236x/29/52/15/295215d2c868e1207f3f0bf4fff9e670.jpg" width="200px"/>', '', 'https://', '2026-03-09 14:49:15', '192.168.50.53'),
	(31, '줄바꿔볼게요', '안녕하세요\r\n엔터가 되나요? \r\n네!', '', 'https://', '2026-03-09 14:51:09', '192.168.50.61'),
	(32, '바우나', '<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCf_LzRCrM7mrhwvzwlStVGLVKM6fldmJCqA&s" width="200px"/>', '', 'https://', '2026-03-09 14:55:32', '192.168.50.53'),
	(33, '홍길동', '<marquee direction="down" width="500" height="150" behavior="alternate" style="border:solid">\r\n<marquee behavior="alternate">이렇게 적으면 글자가 박스 안에서 움직인다.</marquee>\r\n</marquee>\r\n출처: https://blaze0000.tistory.com/2011 [Light:티스토리]', '', 'https://', '2026-03-09 14:56:08', '192.168.50.20'),
	(34, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160128_84%2F24ga1492_14539356981515f72r_JPEG%2FScreenshot_2016-01-27-04-55-52_edit.jpg&type=sc960_832" width="200px"/>', '', 'https://', '2026-03-09 14:57:56', '192.168.50.53'),
	(35, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNzAzMjJfMjQ2%2FMDAxNDkwMTgzMTU5NTMz.Sk-iOvaWI46SP3KG-O8UTQ6KKFtEh8Te9Xn-By5b158g.zqGFcFOrPHStTTD55f9ehSIvWLAUK89OWHW7v-qfXl0g.JPEG.carman1112%2F%25BF%25F4%25B1%25E4%25BB%25E7%25C1%25F8%25B8%25F0%25C0%25BD_%25C0%25E7%25B9%25D4%25B4%25C2%25BB%25E7%25C1%25F8%25B8%25F0%25C0%25BD_%25C0%25AF%25B8%25D3%25C2%25A9_%25BF%25F4%25B1%25E4%25C2%25A9_00005.jpg&type=sc960_832" width="200px"/>', '', 'https://', '2026-03-09 14:58:58', '192.168.50.53'),
	(36, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20150210_264%2Fqktmzpt000_1423565444275TXNyO_PNG%2FScreenshot_2015-02-06-21-05-33-1.png&type=sc960_832" width="200px"/>', '', 'https://', '2026-03-09 15:03:07', '192.168.50.53'),
	(37, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2F20151001_47%2Fljhljh9798_1443691953821w2GyG_JPEG%2F20151001_183107.jpg&type=sc960_832"', '', 'https://', '2026-03-09 15:06:46', '192.168.50.53'),
	(38, '바우나', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Ffimg5.pann.com%2Fnew%2Fdownload.jsp%3FFileID%3D58473648&type=sc960_832"/>', '', 'https://', '2026-03-09 15:14:00', '192.168.50.53'),
	(39, '무지에오', '나의 성은 무엇일까요?\r\n1. 단무지\r\n2. 김무지\r\n3. 쌈무지\r\n<img src = "https://lottemartzetta.com/products/OS8801253004867/details" />', 'muji@nyang.com', 'https://moooooozi.com', '2026-03-09 15:49:00', '192.168.50.59'),
	(41, '쏘큐트', '너무 기엽잖나요!!!!!!!!!!!!!!!!!!!!!!!!! 그만 구여워!!!!!!!!! 아니 더 귀여워!!!!!!!!!! 아니 그만!!!!!!!!!!!! 아니 더더!!!!!!!!!!\r\n\r\n<img src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA3MjhfMjU1%2FMDAxNzIyMTQ4MTk1OTEy.vP5gzpkWKA4cp32_goDrlDsyaPcjU7OzHCbhzVVkcAcg.ISUSBSvq8W7UhfTCJAVTma5b5Yuza2lVzdTmucS-L6kg.JPEG%2FIMG_6199.JPG&type=sc960_832"/>', '', 'https://', '2026-03-09 16:06:02', '192.168.50.59'),
	(42, '무지 사진 좀 더 더더더 주세요', '무지야~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n\r\n싸룽해~~~~~~~~~~~~~~~~~~~~~~\r\n\r\n<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNTA1MDVfNjIg%2FMDAxNzQ2NDAwNzYwNzUy.rcUrHTdTAdMcg0a1t_hbrXEGWq-I2h5Q4RPR3Qsuq5sg.6WP-zi8X3zSd2xH6SFYeydsNDynrEa_E_P64VcR0lKcg.JPEG%2F1746400760189.jpg&type=sc960_832" />', '', 'https://', '2026-03-09 16:07:18', '192.168.50.59'),
	(43, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNTA4MjlfMTkw%2FMDAxNzU2NDM0MDIzNjI2.VF_hOlm9Si6SRVW-ZBLeKKhrdRuCc75DZ4QbuUd62qAg.hZd_l0fkXtf4d8JhdBvS_0gUVm9bJIvKfSebQ23IRhMg.GIF%2F%25B0%25A8%25BD%25BA%25C6%25AE.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-09 16:25:28', '192.168.50.53'),
	(45, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAyMDAzMjBfMTQ1%2FMDAxNTg0NjY4NDQyMDIz.OftJFtFDaJJxGtKaJG4M4BQSKtX2UaC5RB55pUcjYQMg.aP2Rlqvobrz7S3F929dtYTf5Z_m3zWnjoEpo7GxemU4g.GIF%2FexternalFile.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:17:57', '192.168.50.53'),
	(46, '바우나', '<img src="https://search.pstatic.net/sunny/?src=http%3A%2F%2Ffile3.instiz.net%2Fdata%2Ffile3%2F2018%2F10%2F23%2F1%2F6%2F2%2F162ee1a608fb7e94d9d645c5ea365f39.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:20:50', '192.168.50.53'),
	(47, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160814_201%2Fhsuji7018_1471104590996izCzM_GIF%2Fdownloadfile-27.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:21:49', '192.168.50.53'),
	(48, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20150216_52%2Fsyunhee4865_1424064040367QCrtA_GIF%2Fdaum_gallery_photo_20141126142302.gif&type=sc960_832_gif"/>', '', 'https://', '2026-03-10 11:23:47', '192.168.50.53'),
	(50, '하이', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDEwMDhfMTU5%2FMDAxNzI4MzY2NTY3OTEz.uHYNSVnXbx-o63PrLepNT0gbvl0zFAjyZlq0Q-BiiTEg.corb0fUhtdRSg1CgQg4SuMwGTYHNtt0t62oyIthW5-gg.JPEG%2F1728209308126%25A3%25AD18.jpg&type=a340" width="700px"/>', '', 'https://', '2026-03-11 13:55:40', '192.168.50.61'),
	(51, '관리자', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAzMTJfMTk0%2FMDAxNjc4NTYxNTcwNDgx.7POWi8ilWfS17SbCjtLvX_MSx02S2PxjcRmqlFZLXOgg.KbCQZ9o4YcZUIkenzrJuapHqveFHRmD4zqvdV-Wuxjsg.JPEG.kskinline%2FFB%25A3%25DFIMG%25A3%25DF1678434439982.jpg&type=a340" width="700px"/>', '', 'https://', '2026-03-11 13:57:38', '192.168.50.61'),
	(52, '김철수', '<marquee><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMDJfMTc5%2FMDAxNjEyMjYyMjk4MjYz.0d-eTtLWz2lpLxm4fP_DSBaQBr6dDdpX7mYc45tVRNUg._cetjHRLgk52Yykc36GYGZuqdDxh-w9AVvslz8l9RKkg.JPEG.jmc0522%2F84ac595f7db466bcda758359fa6a938c.jpg&type=a340" width="800px"/></marquee>', '', 'https://', '2026-03-11 13:59:19', '192.168.50.61'),
	(54, 'hkd1234', '안녕', '', 'https://', '2026-03-12 14:40:03', '127.0.0.1'),
	(59, 'admin', '<script>for(let i=0;i<30;i++){let s=document.createElement("div");s.innerText="❄️";s.style.cssText="position:fixed;font-size:"+( Math.random()*20+10)+"px;left:"+Math.random()*100+"vw;top:-50px;animation:fall "+(Math.random()*3+2)+"s linear "+(Math.random()*3)+"s infinite;z-index:9999;";document.body.appendChild(s);}let st=document.createElement("style");st.innerText="@keyframes fall{to{transform:translateY(110vh)}}";document.head.appendChild(st);</script>', '', 'https://', '2026-03-16 14:37:23', '192.168.50.51');

-- 테이블 springgreen.hakjum 구조 내보내기
CREATE TABLE IF NOT EXISTS `hakjum` (
  `grade` char(1) NOT NULL,
  `minScore` int NOT NULL,
  `maxScore` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hakjum:~5 rows (대략적) 내보내기
DELETE FROM `hakjum`;
INSERT INTO `hakjum` (`grade`, `minScore`, `maxScore`) VALUES
	('A', 90, 100),
	('B', 80, 89),
	('C', 70, 79),
	('D', 60, 69),
	('F', 0, 59);

-- 테이블 springgreen.hoewon 구조 내보내기
CREATE TABLE IF NOT EXISTS `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hoewon:~5 rows (대략적) 내보내기
DELETE FROM `hoewon`;
INSERT INTO `hoewon` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(2, '김말숙', 33, '여자', '청주'),
	(3, '이기자', 39, '남자', '제주'),
	(7, '씨톰', 20, '여자', '서울'),
	(14, '비톰', 20, '여자', '서울'),
	(17, '에프톰', 33, '남자', '제주');

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

-- 테이블 springgreen.jikmu 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikmu` (
  `buseoId` int NOT NULL,
  `jikmuId` char(2) NOT NULL,
  PRIMARY KEY (`jikmuId`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikmu_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikmu:~2 rows (대략적) 내보내기
DELETE FROM `jikmu`;
INSERT INTO `jikmu` (`buseoId`, `jikmuId`) VALUES
	(10, 'J1'),
	(20, 'J2'),
	(30, 'J3');

-- 테이블 springgreen.jikwon 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikwon` (
  `no` int NOT NULL,
  `buseo` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `bonus` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikwon:~10 rows (대략적) 내보내기
DELETE FROM `jikwon`;
INSERT INTO `jikwon` (`no`, `buseo`, `pay`, `bonus`) VALUES
	(101, '인사', 800, 100),
	(102, '개발', 1200, 20),
	(103, '기획', 1200, 0),
	(104, '개발', 1300, 30),
	(105, '개발', 1100, 50),
	(106, '인사', 900, 0),
	(107, '기획', 1400, 20),
	(108, '인사', 1200, 50),
	(109, '인사', 1100, 0),
	(110, '기획', 700, 100);

-- 테이블 springgreen.jikwons 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikwons` (
  `id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikwons_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikwons:~2 rows (대략적) 내보내기
DELETE FROM `jikwons`;
INSERT INTO `jikwons` (`id`, `name`, `buseoId`) VALUES
	(101, '홍길동', 10),
	(102, '김말숙', 20),
	(103, '이기자', 10);

-- 테이블 springgreen.jobs 구조 내보내기
CREATE TABLE IF NOT EXISTS `jobs` (
  `no` int NOT NULL,
  `job` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jobs:~7 rows (대략적) 내보내기
DELETE FROM `jobs`;
INSERT INTO `jobs` (`no`, `job`) VALUES
	(1, NULL),
	(2, '공무원'),
	(3, '회사원'),
	(4, '학생'),
	(5, NULL),
	(6, '자영업'),
	(7, NULL);

-- 테이블 springgreen.jproduct 구조 내보내기
CREATE TABLE IF NOT EXISTS `jproduct` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jproduct:~0 rows (대략적) 내보내기
DELETE FROM `jproduct`;

-- 테이블 springgreen.jumun 구조 내보내기
CREATE TABLE IF NOT EXISTS `jumun` (
  `no` int NOT NULL,
  `ilja` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jumun:~7 rows (대략적) 내보내기
DELETE FROM `jumun`;
INSERT INTO `jumun` (`no`, `ilja`) VALUES
	(101, '2026-03-02 00:00:00'),
	(102, '2026-03-09 00:00:00'),
	(103, '2026-03-12 00:00:00'),
	(104, '2026-04-01 00:00:00'),
	(105, '2026-04-06 00:00:00'),
	(106, '2026-04-30 00:00:00'),
	(107, '2026-05-22 00:00:00');

-- 테이블 springgreen.kwamok 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamok` (
  `code` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamok:~5 rows (대략적) 내보내기
DELETE FROM `kwamok`;
INSERT INTO `kwamok` (`code`) VALUES
	(201),
	(202),
	(203),
	(204),
	(205);

-- 테이블 springgreen.kwamok2 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamok2` (
  `id` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamok2:~2 rows (대략적) 내보내기
DELETE FROM `kwamok2`;
INSERT INTO `kwamok2` (`id`, `kwamokName`) VALUES
	(1, '수학'),
	(3, '컴퓨터');

-- 테이블 springgreen.kwamoks 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamoks` (
  `kwamokId` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamoks:~2 rows (대략적) 내보내기
DELETE FROM `kwamoks`;
INSERT INTO `kwamoks` (`kwamokId`, `kwamokName`) VALUES
	(1, '수학'),
	(2, '과학'),
	(3, '컴퓨터');

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

-- 테이블 springgreen.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `nickName` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` char(2) NOT NULL DEFAULT '남자',
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT 'noimage.jpg',
  `content` text,
  `userInfor` char(3) DEFAULT '공개',
  `userDel` char(2) DEFAULT 'NO',
  `point` int DEFAULT '100',
  `level` int DEFAULT '1',
  `visitCnt` int DEFAULT '0',
  `startDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `todayCnt` int DEFAULT '0',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.member:~12 rows (대략적) 내보내기
DELETE FROM `member`;
INSERT INTO `member` (`idx`, `mid`, `pwd`, `nickName`, `name`, `gender`, `birthday`, `tel`, `address`, `email`, `homePage`, `job`, `hobby`, `photo`, `content`, `userInfor`, `userDel`, `point`, `level`, `visitCnt`, `startDate`, `lastDate`, `todayCnt`) VALUES
	(4, 'hkd1234', '4d62f3e30438aa9184e95e096ef813afd0b3aaf7dada566253b775f3ba49e9900d04a706', '팡팡이', '김팡팡', '여자', '2026-03-12 00:00:00', '010-1253-1234', '01029 /서울 강북구 삼양로123길 6-7 /서울입니다 / (수유동, 남광하이빌) ', 'rrlatngus74@naver.com', 'https://naver.com', '군인', '독서/영화감상/바둑', 'noimage.jpg', '안녕하세요 김팡팡이라고\r\n합니다.', '공개', 'NO', 270, 2, 0, '2026-03-12 11:10:05', '2026-03-16 11:06:33', 1),
	(5, 'admin', '4d62f3e30438aa9184e95e096ef813afd0b3aaf7dada566253b775f3ba49e9900d04a706', '아침마당', '아침마당', '여자', '2026-03-12 00:00:00', '010-8415-8228', '28340 /충북 청주시 청원구 주성로96번길 8 /한울3차 302동 1302호 /(율량동, 한울아파트) ', 'rrlatngus74@naver.com', 'https://naver.com', '기타', '바둑', 'noimage.jpg', '안녕하세요 수현입니다\r\n왜요? 왜 수현인가요??\r\n무러바\r\n뭘로바\r\n내꺼 막아놨지~232323444444444444444444\r\nㅡ 배유나 ㅡ\r\n왜 막아놓으셔써요!!!!!!!!!!!!!!!!!!!!\r\n나 배유나야 나 몰라??? 나 인기녀야 왜이래!!!!!\r\n나 청주 잘나가는 사람인데? 다들 내 밑으로 쉿 조용!\r\n너무너무 재밌다!!!!!!!!!!!!!!\r\n나 배유나 청와대 수시입학 한 사람이야!! 까불지마!\r\nㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ\r\n아 진짜 어디서 쓴건가 했는데 수현님 자기소개에서 쓰고 있냐고욬ㅋㅋㅋㅋㅋㅋㅋㅋ\r\n너어어어어어어무 웃기다!!!!!!~~~~~~~~~\r\n일본과자 넘모 마싯따~~~~~~\r\n우왕 진짜진짜 너무 재미따!!!\r\n배:배다른 동생\r\n유:유지보수도 잘하는\r\n나:나 닮은 동생 김수현\r\n김:김수현에게 꼭 필요한\r\n수:수호천사\r\n현:현재 제일 이쁜 배유나', '공개', 'NO', 160, 0, 0, '2026-03-12 11:45:49', '2026-03-17 13:42:00', 8),
	(6, 'hihi1234', '48010635b70e10935aff57fb32e931b444f9a247cf32b119f061da70c038a4d742dadf5e', '사자', '강사자', '여자', '2026-03-16 00:00:00', '010-1234-5678', '46709 /부산 강서구 봉림길234번길 17 /맛있는음식집 / (봉림동) ', 'rrlatngus74@naver.com', 'https://naver.com', '공무원', '수영/독서/영화감상', 'noimage.jpg', '안녀하세요???', '공개', 'NO', 120, 1, 0, '2026-03-12 11:50:23', '2026-03-12 11:50:23', 0),
	(7, 'kms1234', '94f4a9666f18396c791cd2fb3f252faf982c6b6fa26bf7f952cd637007566cebc1bece3d', '호랑이', '김랑이', '여자', '2026-03-12 00:00:00', '010-4567-4567', '06303 /서울 강남구 개포로15길 3-10 /안녕 / (개포동) ', 'rrlatngus74@hanmail.net', 'https://hanmail.net', '의사', '수영/독서', 'noimage.jpg', '안녕히계세요', '공개', 'NO', 120, 1, 0, '2026-03-12 11:50:56', '2026-03-16 11:29:32', 2),
	(8, 'mks5678', 'f7f8a9970ae513fd8627a6c041727271a967436c4793ed5f57a50f4902f01db5bfde4cb8', '바우나우나', '김해킹', '여자', '2026-03-12 00:00:00', '010-4646-4646', '06036 /서울 강남구 도산대로15길 14-2 /학원 / (신사동) ', 'rrlatngus74@naver.com', 'https://naver.com', '군인', '독서/바둑', 'noimage.jpg', '하이', '공개', 'NO', 100, 1, 0, '2026-03-12 11:51:49', '2026-03-12 11:51:49', 0),
	(9, 'kms4578', 'e03313d93d713ee61a0da7c0fe5a2051b12f3552e4474016fd41f493572fc665b52d6408', '토끼', '김토끼', '남자', '2026-03-12 00:00:00', '010-8989-8989', '50894 /경남 김해시 금관대로1213번길 2 /경남이에요 / (외동) ', 'rrlatngus74@naver.com', 'https://naver.com', '군인', '수영/독서/영화감상', 'noimage.jpg', 'ㅎㅇ', '공개', 'NO', 100, 2, 0, '2026-03-12 15:42:59', '2026-03-12 15:42:59', 0),
	(10, 'asd1234', 'ecca1b89f6fa0ced9613ac505ce78a521ab8b2e82b98f7159d18e4f572b0dc5fcea7fec9', '응아', '김똥', '남자', '2026-03-12 00:00:00', '010-2323-2323', '06306 /서울 강남구 개포로25길 9-8 /아파트다 / (개포동) ', 'rrlatngus74@naver.com', 'https://naver.com', '공무원', '수영/독서/기타', 'noimage.jpg', 'ㅎㅇㅎㅇ', '공개', 'NO', 110, 2, 0, '2026-03-12 15:43:34', '2026-03-12 15:43:34', 0),
	(11, 'alal4545', 'd8fd60988e951070250c113e73923b177164b9f751529412aa558df97da4cb4532bfe9b0', '강지', '김개', '여자', '2026-03-12 00:00:00', '010-1212-7878', '46708 /부산 강서구 봉림동 735-16 /하이빌라 / ', 'rrlatngus74@naver.com', 'https://naver.com', '공무원', '낚시/수영/바둑', 'noimage.jpg', 'ㅎㅇㅎㅇㅎㅇ', '공개', 'NO', 100, 1, 0, '2026-03-12 15:44:23', '2026-03-12 15:44:23', 0),
	(12, 'ctom1234', '1900730d033f380bfd398b990479a38dd056199a9f7b6cbee33fb5ebed2c8fca3e4f5209', '씨톰', '김씨톰', '남자', '2026-03-12 00:00:00', '010-4646-5656', '06309 /서울 강남구 개포로34길 7 /반갑 / (개포동) ', 'rrlatngus74@naver.com', 'https://naver.com', '기타', '독서/영화감상/기타', 'noimage.jpg', 'ㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇ', '공개', 'NO', 100, 1, 0, '2026-03-12 15:45:05', '2026-03-12 15:45:05', 0),
	(13, 'dtom1234', 'bdeae99aa4c40de329e2e22825b2b4000bae423d34e964f080de3bf70ebca75f82a434d5', '디톰이', '김디톰', '여자', '2026-03-12 00:00:00', '010-1313-4646', '61919 /광주 서구 상무대로1243번길 2-4 /킼키 / (양동) ', 'rrlatngus74@naver.com', 'https://naver.com', '군인', '수영/독서/기타', 'noimage.jpg', 'ㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇ', '비공개', 'NO', 130, 2, 0, '2026-03-12 16:39:10', '2026-03-12 16:39:10', 0),
	(14, 'ftom1234', '4d62f3e30438aa9184e95e096ef813afd0b3aaf7dada566253b775f3ba49e9900d04a706', '에프톰', '에프톰', '남자', '2026-03-12 00:00:00', '010-7979-7878', ' / / / ', 'rrlatngus74@naver.com', 'https://naver.com', '기타', '독서/영화감상', 'noimage.jpg', 'ㅋㅋgggg', '비공개', 'NO', 140, 1, 0, '2026-03-12 16:41:55', '2026-03-16 14:17:35', 4),
	(15, 'ztom1234', '4d62f3e30438aa9184e95e096ef813afd0b3aaf7dada566253b775f3ba49e9900d04a706', '젯톰맨', '제트톰', '남자', '2026-03-13 00:00:00', '010-2222-1111', '15653 /경기 안산시 단원구 강거래길 4 /기차 / (대부남동) ', 'bawoona1234@naver.com', 'https://cjsk1126.tistory.com', '기타', '낚시/기타', 'noimage.jpg', '무러바', '공개', 'OK', 190, 99, 0, '2026-03-13 10:54:38', '2026-03-13 12:21:40', 0);

-- 테이블 springgreen.orders 구조 내보내기
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `custid` int NOT NULL,
  `bookid` int NOT NULL,
  `saleprice` int DEFAULT '0',
  `orderdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderid`),
  KEY `custid` (`custid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.orders:~20 rows (대략적) 내보내기
DELETE FROM `orders`;
INSERT INTO `orders` (`orderid`, `custid`, `bookid`, `saleprice`, `orderdate`) VALUES
	(1, 1, 1, 6000, '2019-08-01 00:00:00'),
	(2, 1, 3, 21000, '2018-09-03 00:00:00'),
	(3, 2, 5, 8000, '2022-11-03 00:00:00'),
	(4, 3, 6, 6000, '2020-06-04 00:00:00'),
	(5, 4, 7, 19000, '2019-11-05 00:00:00'),
	(6, 1, 2, 12000, '2021-09-07 00:00:00'),
	(7, 4, 8, 11000, '2019-03-07 00:00:00'),
	(8, 3, 10, 12000, '2021-07-08 00:00:00'),
	(9, 2, 10, 9000, '2017-05-09 00:00:00'),
	(10, 3, 18, 13000, '2023-10-11 00:00:00'),
	(11, 7, 15, 15000, '2023-06-17 00:00:00'),
	(12, 7, 20, 16000, '2023-12-19 00:00:00'),
	(13, 3, 19, 23000, '2023-06-30 00:00:00'),
	(14, 1, 16, 17000, '2023-11-21 00:00:00'),
	(15, 4, 15, 13000, '2023-05-12 00:00:00'),
	(16, 7, 10, 13000, '2025-09-24 00:00:00'),
	(17, 1, 12, 23000, '2025-02-26 00:00:00'),
	(18, 2, 11, 13000, '2025-09-16 00:00:00'),
	(19, 4, 20, 13000, '2026-03-20 00:00:00'),
	(20, 4, 15, 20000, '2026-04-26 00:00:00');

-- 테이블 springgreen.panme2 구조 내보내기
CREATE TABLE IF NOT EXISTS `panme2` (
  `nalja` datetime NOT NULL,
  `jikwon` varchar(10) NOT NULL,
  `mechul` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.panme2:~6 rows (대략적) 내보내기
DELETE FROM `panme2`;
INSERT INTO `panme2` (`nalja`, `jikwon`, `mechul`) VALUES
	('2026-03-01 00:00:00', '홍길동', 100),
	('2026-03-02 00:00:00', '홍길동', 200),
	('2026-03-03 00:00:00', '홍길동', 150),
	('2026-03-01 00:00:00', '김말숙', 300),
	('2026-03-02 00:00:00', '김말숙', 350),
	('2026-03-01 00:00:00', '이기자', 250);

-- 테이블 springgreen.products 구조 내보내기
CREATE TABLE IF NOT EXISTS `products` (
  `productName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.products:~8 rows (대략적) 내보내기
DELETE FROM `products`;
INSERT INTO `products` (`productName`, `price`) VALUES
	('진라면', 1300),
	('새우탕면', 1100),
	('너구리', 1800),
	('틈새라면', 1200),
	('비빔면', 1500),
	('안성탕면', 1000),
	('라면시대', 1900),
	('신_라면', 2200);

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

-- 테이블 springgreen.sawon 구조 내보내기
CREATE TABLE IF NOT EXISTS `sawon` (
  `sabun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`sabun`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `sawon_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.sawon:~5 rows (대략적) 내보내기
DELETE FROM `sawon`;
INSERT INTO `sawon` (`sabun`, `name`, `pay`, `buseoId`) VALUES
	(101, '김사원', 5000, 10),
	(102, '김과장', 6000, 20),
	(103, '서대리', 4000, 10),
	(104, '이부장', 7000, 30),
	(105, '오과장', 6500, 30);

-- 테이블 springgreen.students 구조 내보내기
CREATE TABLE IF NOT EXISTS `students` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `age` int DEFAULT '20',
  `score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students:~8 rows (대략적) 내보내기
DELETE FROM `students`;
INSERT INTO `students` (`hakbun`, `name`, `age`, `score`) VALUES
	(101, '홍길동', 20, 85),
	(102, '이순신', 21, 73),
	(103, '임꺽정', 20, 59),
	(104, '장보고', 21, 92),
	(105, '홍길동', 20, 63),
	(106, '김연아', 23, 88),
	(107, '오하늘', 23, 81),
	(108, '강감찬', 24, 95);

-- 테이블 springgreen.students2 구조 내보내기
CREATE TABLE IF NOT EXISTS `students2` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `kwamokId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students2:~4 rows (대략적) 내보내기
DELETE FROM `students2`;
INSERT INTO `students2` (`hakbun`, `name`, `kwamokId`) VALUES
	(101, '홍길동', 1),
	(102, '이순신', 2),
	(103, '임꺽정', NULL),
	(103, '이기자', 2);

-- 테이블 springgreen.students3 구조 내보내기
CREATE TABLE IF NOT EXISTS `students3` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students3:~2 rows (대략적) 내보내기
DELETE FROM `students3`;
INSERT INTO `students3` (`name`, `hakbun`, `major`) VALUES
	('홍길동', 21, '컴퓨터'),
	('김말숙', 22, '경영'),
	('이기자', 24, '물리');

-- 테이블 springgreen.students4 구조 내보내기
CREATE TABLE IF NOT EXISTS `students4` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students4:~2 rows (대략적) 내보내기
DELETE FROM `students4`;
INSERT INTO `students4` (`name`, `hakbun`, `major`) VALUES
	('강감찬', 21, '물리'),
	('김말숙', 22, '경영'),
	('김연아', 23, '교육');

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

-- 테이블 springgreen.sungjuks 구조 내보내기
CREATE TABLE IF NOT EXISTS `sungjuks` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `jumsu` int DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.sungjuks:~6 rows (대략적) 내보내기
DELETE FROM `sungjuks`;
INSERT INTO `sungjuks` (`idx`, `name`, `jumsu`) VALUES
	(1, '길동', 90),
	(2, '말숙', 80),
	(3, '철수', 90),
	(4, '영희', 60),
	(5, '민수', 60),
	(6, '수지', 70),
	(7, '수민', 50);

-- 테이블 springgreen.test 구조 내보내기
CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test:~13 rows (대략적) 내보내기
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

-- 테이블 데이터 springgreen.test2:~13 rows (대략적) 내보내기
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

-- 테이블 데이터 springgreen.test3:~3 rows (대략적) 내보내기
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

-- 테이블 데이터 springgreen.test4:~3 rows (대략적) 내보내기
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
