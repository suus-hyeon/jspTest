<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberPwdCheck.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
	<script>
		'use strict';
		
		function pwdCheck() {
			let pwd = $("#pwd").val();
			if(pwd.trim() == "") {
				alert("기존 비밀번호를 입력하세요");
				$("#pwd").focus();
				return false;
			}
			
			$.ajax({
				url : 'MemberpwdCheckOk.mem',
				type : 'post',
				data : {pwd : pwd},
				success:function(res) {
					if(res == '0') alert("비밀번호 오류!!\n비밀번호를 다시 입력하세요");
					else {
						let str = '';
						str += '';
						str += '<hr/>';
						str += '<div class="input-group">';
						str += '<div class="input-group-text">새 비밀번호</div>';
						str += '<input type="password" name="pwdNew" id="pwdNew" class="form-control"/>';
						str += '</div>';
						str += '<div class="input-group">';
						str += '<div class="input-group-text">비밀번호 확인</div>';
						str += '<input type="password" name="pwdRe" id="pwdRe" class="form-control"/>';
						str += '<input type="button" value="비밀번호변경" onclick="pwdChange()" class="btn btn-info"/>';
						str += '</div>';
						$("#pwdForm").html(str);
					}
				},
				error : () => alert("전송오류")
			});
		}
		
		// 비밀번호 체크
		function pwdChange() {
			let pwdNew = $("#pwdNew").val();
			let pwdRe = $("#pwdRe").val();
			
			if(pwdNew != pwdRe) {
				alert("입력하신 비밀번호가 일치하지 않습니다");
				$("#pwdNew").focus();
				return false;
			}
			
			myform.submit();
		} 
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2>비밀번호 변경</h2>
	<form name="myform" method="post" action="MemberPwdCheckRes.mem">
		<div class="input-group">
			<div class="input-group-text">기존비밀번호</div>
			<input type="password" name="pwd" id="pwd" class="form-control" autofocus required />
			<input type="button" value="비밀번호확인" onclick="pwdCheck()" class="btn btn-success"/>
		</div>
		<div id="pwdForm"></div>
	</form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>