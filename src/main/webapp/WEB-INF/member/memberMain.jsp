<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberMain.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2>회원 메인 방</h2>
	<hr/>
	<font color="blue"><b>${sNickName}</b></font>(${sMid}) 회원님 로그인 중<br/>
	현재 등급 : <font color="red"><b>${strLevel}</b></font>(${sLevel})<br/>
	<hr/>
	현재 총포인트 : <font color="orange"><b>${point}</b></font>점<br/>
	최근 방문일 : ${sLastDate}</br>
	<hr/>
	<div>
		방명록에 쓴 글 : ${guestCnt} 건<br/>
	</div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>