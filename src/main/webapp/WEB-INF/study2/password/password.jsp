<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>password.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
	<script>
		'use strict';
		
		function fCheck(flag) {
			let pwd = myform.pwd.value;
			if(pwd.trim() == "" || pwd.length > 10) {
				alert("비밀번호를 확인하세요")
				myform.pwd.focus();
			}
			else {
				myform.flag.value = flag;
				myform.action = "PasswordCheck.st";
				myform.submit();
			}
		}
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2>비밀번호 암호화</h2>
	<pre>
		* 솔트(salt) *
		암호학에서 salt는 데이터, 비밀번호, 통과하는 암호를 해시처리하기위한 단방향함수의 추가 키로서 랜덤하게 처리하는 데이터이다.
    솔트는 레인보우 테이블(rainbow table : 해시테이블)과 같은 미리 계산된 테이블을 사용한다.
    
    <h4>SHA(Secure Hash Algorithm)</h4>
    : SHA는 단방향식 암호화 기법으로, 암호학적 해시함수들의 모임이다.
    일반적으로 복호화 할수 없도록 만든 알고리즘으로, SHA-2라고도 한다.
    해시함수가 출력되는 암축된 문장을 다이제스트(Digest)라고 하는데,
    이때 SHA-2가 생성해주는 다이제스트의 출력길이는 256, 512Bit가 있다.
    여기서 256Bit의 출력길이를 갖는 SHA-2암호화기법을 'SHA-256암호화 방식'이라고 한다.
	</pre>
	<P>(비밀번호는 10자 이내로 작성한다.)
	<form name="myform" method="post">
		<table class="table table-bordered">
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd" id="pwd" value="1234" maxlength="10" required class="form-control"/></td>			
			</tr>
			<tr>
				<td colspan="2" class="text-center">
					<input type="button" value="숫자비밀번호" onclick="fCheck(1)" class="btn btn-success"/>
					<input type="button" value="문자비밀번호" onclick="fCheck(2)" class="btn btn-primary"/>
					<input type="button" value="SHA암호화" onclick="fCheck(3)" class="btn btn-info"/>
					<input type="button" value="SHA암호화2" onclick="fCheck(4)" class="btn btn-warning"/>
					<input type="button" value="SHA확인" onclick="fCheck(5)" class="btn btn-danger"/>
				</td>
			</tr>
		</table>
		<input type="hidden" name="flag"/>
	</form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>