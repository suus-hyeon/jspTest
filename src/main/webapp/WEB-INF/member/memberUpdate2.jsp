<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
  <title>memberUpdate.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <script src="//t1.kakaocdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <link rel="stylesheet" type="text/css" href="${ctp}/css/orangeLink.css"/>
  <script src="${ctp}/js/woo.js"></script>
  <script>
  	'use strict';
  
  	function fCheck() {
  		// 유효성 검사
		  const regNickName = /^[0-9가-힣_]{2,15}$/g; // 닉네임
		  const regName = /^[a-zA-Z가-힣]+$/g; // 성명
		  const regEmail1 = /^[a-zA-Z0-9._%+\-]+$/; // 이메일(소문자) 형식체크(atom@naver.com, atom@naver.co.kr)
		  const regHomePage = /^(https?:\/\/)?[a-z0-9]*\.([a-z0-9]{2,10})*\/?/i; // url 
		  const regTel = /^\d{3,4}$/; // 전화번호
  	
	  	let mid = document.getElementById("mid").value.trim();
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
	  	
	  	if(!regNickName.test(nickName)) {
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
  <form name="myform" method="post" action="MemberUpdateOk2.mem">
  	<table class="table table-bordered">
  		<tr>
  			<th>아이디</th>
  			<td><input type="text" name="mid" id="mid" value="" class="form-control" readonly /></td>
  			
  		</tr>
  		<tr>
  			<th>닉네임</th>
  			<td><input type="text" name="nickName" id="nickName" value="" class="form-control" /></td>
  		</tr>
  		<tr>
  			<th>성명</th>
  			<td><input type="text" name="name" id="name" value="" class="form-control" /></td>
  		</tr>
  		<tr>
  			<th>Email address</th>
  			<td>
  			  <div class="input-group">
	  			  <input type="text" name="email1" id="email1" value="" class="form-control" />
	  			  <div class="input-group-text">@</div>
	  			  <select class="form-select">
	  			    <option>naver.com</option>
	  			    <option>hanmail.net</option>
	  			    <option>hotmail.com</option>
	  			    <option>gmail.com</option>
	  			    <option>nate.com</option>
	  			    <option>yahoo.com</option>
	  			  </select>
  			  </div>
  			</td>
  		</tr>
  		<tr>
  			<th>성별</th>
  			<td>
	  			<input type="radio" name="gender" class="form-check-input me-2" value="여자"/>여자 &nbsp; &nbsp;
	  			<input type="radio" name="gender" class="form-check-input me-2" value="남자"/>남자
  			</td>
  		</tr>
  		<tr>
  			<th>생일</th>
  			<td>
  				<input type="date" name="birthday" value="" class="form-control"/>
  			</td>
  		</tr>
  		<tr>
  			<th>전화번호</th>
  			<td>
  				<div class="input-group">
	  				<select name="tel1" class="form-select">
	  					<option value="010">010</option>
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
	  				<input type="text" name="tel2" id="tel2" value="" size=4 maxlength=4 class="form-control" />
	  				<div class="input-group-text">-</div>
	  				<input type="text" name="tel3" id="tel3" value="" size=4 maxlength=4 class="form-control" />
  				</div>
  			</td>
  		</tr>
  		<tr>
  			<th>직업</th>
  			<td>
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
  			</td>
  		</tr>
  		<tr>
  			<th>취미</th>
  			<td>
  				
  			</td>
  		</tr>
  	</table>
  </form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>