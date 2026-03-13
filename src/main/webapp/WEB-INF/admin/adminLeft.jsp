<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>adminLeft.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
</head>
<body style="background-color: pink">
<p><br/></p>
<div class="container text-center">
	<h5><a href="AdminMain.ad" target="_top">관리자메뉴</a></h5>
	<hr/>
	<p><a href="${ctp}/Main" target="_top">홈으로</a></p>
	<hr/>
	<div>
		<h5>방명록</h5>
		<div><a href="AdminGuestList.ad" target="adminRight">방명록리스트</a></div>
		<hr/>
	</div>
	<div>
		<h5>게시판</h5>
		<div><a href="#" target="adminRight">게시판리스트</a></div>
		<hr/>
	</div>
	<div>
		<h5>회원관리</h5>
		<div><a href="AdminMemberList.ad" target="adminRight">회원리스트</a></div>
		<div><a href="#" target="adminRight">신고리스트</a></div>
	</div>
</div>
<p><br/></p>
</body>
</html>