<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String today = java.time.LocalDate.now().toString();
	pageContext.setAttribute("today", today);
%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberJoin.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <script src="//t1.kakaocdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <link rel="stylesheet" type="text/css" href="${ctp}/css/orangeLink.css"/>
  <script src="${ctp}/js/woo.js"></script>
  <script>
  	'use strict';
  	
  	// 정규식을 사용하세요ㅜㅜㅜㅠㅜㅠㅜㅠㅜㅠㅜㅠㅜㅠㅜㅠ
  	// 아이디는 4~20의 영문 대/소문자와 숫자/밑줄 사용가능ㅣㅣ
  	// 비밀번호는 공백체크만ㅣㅣ
  	// 닉네임은 한글/숫자/밑줄 만 사용ㅣㅣ
  	// 이름은 한글/영문ㅣㅣ
  	// 이메일은 email 형식에 맞도록 처리ㅣㅣ
  	// 홈페이지 입력시는 url형식에 맞도록 처리ㅣㅣ
  	// 전화번호입력시는 전화번호형식에 맞도록처리ㅣㅣ
  
  	function fCheck() {
  		// 유효성 검사
  		const regMid = /^[a-zA-Z0-9_]{4,20}$/g; // 아이디
  		const regPwd = /^[a-zA-Z0-9_]{2,15}$/g;   // 비밀번호
		  const regNickName = /^[0-9가-힣_]{2,15}$/g; // 닉네임
		  const regName = /^[a-zA-Z가-힣]+$/g; // 성명
		  const regEmail1 = /^[a-zA-Z0-9._%+\-]+$/; // 이메일(소문자) 형식체크(atom@naver.com, atom@naver.co.kr)
		  const regHomePage = /^(https?:\/\/)?[a-z0-9]*\.([a-z0-9]{2,10})*\/?/i; // url 
		  const regTel = /^\d{3,4}$/; // 전화번호
  	
	  	let mid = document.getElementById("mid").value.trim();
	  	let pwd = document.getElementById("pwd").value.trim();
	  	let nickName = document.getElementById("nickName").value.trim();
	  	let name = document.getElementById("name").value.trim();
	  	let homePage = document.getElementById("homePage").value.trim();
	  	
	  	let email1 = document.myform.email1.value.trim();
    	let email2 = document.myform.email2.value;
    	let email = email1 + "@" + email2;
	  	
	  	let tel1 = document.myform.tel1.value;
	  	let tel2 = document.getElementById("tel2").value.trim();
	  	let tel3 = document.getElementById("tel3").value.trim();
	  	let tel = tel1 + "-" + tel2 + "-" + tel3;
	  	
	  	let postcode = document.myform.postcode.value + " ";
    	let roadAddress = document.myform.roadAddress.value + " ";
    	let detailAddress = document.myform.detailAddress.value + " ";
    	let extraAddress = document.myform.extraAddress.value + " ";
    	let address = postcode + "/" + roadAddress + "/" + detailAddress + "/" + extraAddress;
	  	
	  	if(!regMid.test(mid)) {
	  		alert("아이디를 다시 입력하세요")
	  		document.getElementById("mid").focus();
	  	}
	  	else if(!regPwd.test(pwd)) {
	  		alert("비밀번호를 확인해주세요")
	  		document.getElementById("pwd").focus();
	  	}
	  	else if(!regNickName.test(nickName)) {
	  		alert("닉네임을 다시 입력하세요")
	  		document.getElementById("nickName").focus();
	  	}
	  	else if(!regName.test(name)) {
	  		alert("이름을 다시 입력하세요")
	  		document.getElementById("name").focus();
	  	}
	  	else if(!regEmail1.test(email1)) {
	  		alert("이메일주소를 다시 입력하세요")
	  		document.getElementById("email1").focus();
	  	}
	  	else if(!regTel.test(tel2)) {
	  		alert("전화번호를 다시 입력하세요")
	  		document.getElementById("tel2").focus();
	  	}
	  	else if(!regTel.test(tel3)) {
	  		alert("전화번호를 다시 입력하세요")
	  		document.getElementById("tel3").focus();
	  	}
	  	else if(!regHomePage.test(homePage)) {
	  		alert("홈페이지를 url형식에 맞게 입력하세요")
	  		document.getElementById("homePage").focus();
	  	}
	  	else {
	  		//alert("가입 성공!!!ㅠ.ㅠ");
	  		
	  		// 앞에서 모든 자료를 정상적으로 유효성검사를 마친 후 빠진 필드의 내용을 채워서ㅜ 서버로 전송처리한다.
	  		document.myform.tel.value = tel;
	  		document.myform.address.value = address;
	  		document.myform.email.value = email;
	  		
	  		document.myform.submit();
	  	}
  	}
  	
  	// 아이디 중복체크
  	function idCheck() {
  		let mid = document.getElementById("mid");
  		if(mid.value.trim() == "") {
  			alert("아이디를 입력하세요");
  			mid.focus();
  			return false;
  		}
  	
	  	$.ajax({
	  		url : 'IdSearch.mem',
	  		type : 'get',
	  		data : {mid : mid.value},
	  		success: (res) => {
					if(res != "0") {
						alert("아이디가 중복되었습니다. 다른 아이디로 다시 검색해 주세요.")
						mid.focus();
					}
					else {
						alert("사용 가능한 아이디 입니다.");
					}
	  		},
	  		error: () => alert("전송오류")
	  	});
  	}
  	
  	// 닉네임 중복체크
  	function nickCheck() {
  		let nickName = document.getElementById("nickName");
  		if(nickName.value.trim() == "") {
  			alert("닉네임을 입력하세요");
  			nickName.focus();
  			return false;
  		}
  	
	  	$.ajax({
	  		url : 'NickNameSearch.mem',
	  		type : 'get',
	  		data : {nickName : nickName.value},
	  		success: (res) => {
					if(res != "0") {
						alert("닉네임이 중복되었습니다. 다른 닉네임으로 다시 검색해 주세요.")
						nickName.focus();
					}
					else {
						alert("사용 가능한 닉네임 입니다.");
					}
	  		},
	  		error: () => alert("전송오류")
	  	});
  	}
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2 class="text-center mb-3">회 원 가 입</h2>
  <form name="myform" method="post" action="MemberJoinOk.mem">
  	<div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle"><label for="mid">아이디</label></div>
      <input type="text" class="form-control" name="mid" id="mid" placeholder="아이디를 입력하세요." required autofocus/>
      <input type="button" value="아이디 중복체크" id="midBtn" class="btn btn-secondary btn-sm" onclick="idCheck()"/>
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle"><label for="pwd">비밀번호</label></div>
      <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요." name="pwd" required />
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle"><label for="nickName">닉네임</label></div>
      <input type="text" class="form-control" id="nickName" placeholder="별명을 입력하세요." name="nickName" required />
      <input type="button" id="nickNameBtn" value="닉네임 중복체크" class="btn btn-secondary btn-sm" onclick="nickCheck()"/>
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle"><label for="name">성명</label></div>
      <input type="text" class="form-control" id="name" placeholder="성명을 입력하세요." name="name" required />
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle"><label for="email1">Email address:</label></div>
      <input type="text" class="form-control" placeholder="Email을 입력하세요." id="email1" name="email1" required />
      <div class="input-group-text bg-secondary-subtle">@</div>
      <select name="email2" class="form-select">
        <option value="naver.com" selected>naver.com</option>
        <option value="hanmail.net">hanmail.net</option>
        <option value="hotmail.com">hotmail.com</option>
        <option value="gmail.com">gmail.com</option>
        <option value="nate.com">nate.com</option>
        <option value="yahoo.com">yahoo.com</option>
      </select>
    </div>
    <div class="input-group mb-3">
      <label class="input-group-text bg-secondary-subtle border-secondary-subtle">성 별</label>
      <div class="border form-control">
      <label class="form-check-label ms-3">
        <input type="radio" name="gender" class="form-check-input me-2" value="남자" checked>남자
      </label>
      <label class="form-check-label">
        <input type="radio" name="gender" class="form-check-input me-2" value="여자">여자
      </label>
      </div>
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle"><label for="birthday">생일</label></div>
      <input type="date" name="birthday" value="${today}" class="form-control"/>
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle">전화번호</div>
      <select name="tel1" class="form-select">
        <option value="010" selected>010</option>
        <option value="02">서울</option>
        <option value="031">경기</option>
        <option value="032">인천</option>
        <option value="041">충남</option>
        <option value="042">대전</option>
        <option value="043">충북</option>
        <option value="051">부산</option>
        <option value="052">울산</option>
        <option value="061">전북</option>
        <option value="062">광주</option>
      </select>
      <div class="input-group-text">-</div>
      <input type="text" name="tel2" id="tel2" size=4 maxlength=4 class="form-control"/>
      <div class="input-group-text">-</div>
      <input type="text" name="tel3" id="tel3" size=4 maxlength=4 class="form-control"/>
    </div>
    <div class="mb-2">
    	<div class="input-group mb-1">
    		<input type="text" name="postcode" id="sample6_postcode" placeholder="우편번호를 입력하세요" class="form-control bg-secondary-subtle">
    		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn btn-secondary">
    	</div>
    	<div class="input-group mb-1">
    		<input type="text" name="roadAddress" id="sample6_address" placeholder="주소" class="form-control">
    	</div>
    	<div class="input-group mb-1">
    		<input type="text" name="detailAddress" id="sample6_detailAddress" placeholder="상세주소" class="form-control">
				<input type="text" name="extraAddress" id="sample6_extraAddress" placeholder="참고항목" class="form-control">
    	</div>
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle"><label for="homepage">Homepage address</label></div>
      <input type="text" class="form-control" name="homePage" value="https://" id="homePage"/>
    </div>
    <div class="input-group mb-2">
      <div class="input-group-text bg-secondary-subtle"><label for="name">직업</label></div>
      <select class="form-select" id="job" name="job">
        <option>학생</option>
        <option>회사원</option>
        <option>공무원</option>
        <option>군인</option>
        <option>의사</option>
        <option>법조인</option>
        <option>세무인</option>
        <option>자영업</option>
        <option selected>기타</option>
      </select>
    </div>
    <div class="input-group mb-2">
      <label class="input-group-text bg-secondary-subtle border-secondary-subtle">취미</label>
      <div class="border form-control">
        <input type="checkbox" class="form-check-input ms-2 me-1" value="등산" name="hobby"/>등산
        <input type="checkbox" class="form-check-input ms-2 me-1" value="낚시" name="hobby"/>낚시
        <input type="checkbox" class="form-check-input ms-2 me-1" value="수영" name="hobby"/>수영
        <input type="checkbox" class="form-check-input ms-2 me-1" value="독서" name="hobby"/>독서
        <input type="checkbox" class="form-check-input ms-2 me-1" value="영화감상" name="hobby"/>영화감상
        <input type="checkbox" class="form-check-input ms-2 me-1" value="바둑" name="hobby"/>바둑
        <input type="checkbox" class="form-check-input ms-2 me-1" value="축구" name="hobby"/>축구
        <input type="checkbox" class="form-check-input ms-2 me-1" value="기타" name="hobby" checked/>기타
      </div>
    </div>
    <div class="input-group mb-2">
      <label for="content" class="input-group-text bg-secondary-subtle border-secondary-subtle">자기소개</label>
      <textarea rows="5" class="form-control" id="content" name="content" placeholder="자기소개를 입력하세요."></textarea>
    </div>
    <div class="input-group mb-2">
      <label class="input-group-text bg-secondary-subtle border-secondary-subtle">정보공개</label>
      <div class="border form-control">
        <label class="form-check-label ms-3">
          <input type="radio" class="form-check-input me-2" name="userInfor" value="공개" checked/>공개
        </label>
        <label class="form-check-label">
          <input type="radio" class="form-check-input me-2" name="userInfor" value="비공개"/>비공개
        </label>
    	</div>
    </div>
    <div class="input-group mb-1">
      <div class="input-group-text bg-secondary-subtle border-secondary-subtle">회원 사진(파일용량:2MByte이내)</div>
      <input type="file" name="fName" id="file" onchange="imgCheck(this)" class="bg-secondary-subtle form-control"/>
    </div>
    <div class="text-end m-0 p-0"><img id="photoDemo" width="100px"/></div>
    <div class="text-center">
	    <button type="button" class="btn btn-success" onclick="fCheck()">회원가입</button> &nbsp;
	    <button type="reset" class="btn btn-warning">다시작성</button> &nbsp;
	    <button type="button" class="btn btn-info" onclick="location.href='MemberLogin.mem';">돌아가기</button>
    </div>
    <input type="hidden" name="tel"/>
    <input type="hidden" name="address"/>
    <input type="hidden" name="email"/>
  </form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>