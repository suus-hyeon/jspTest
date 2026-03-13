<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>adminRight.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
	<script>
		'use strict';
		
		function memberDeleteOk() {
			
		}
	
	</script>
</head>
<body>
<p><br/></p>
<div class="container text-center">
	<h5><a href="AdminMain.ad" target="adminRight">관리자 대시보드</a></h5>
	<hr/>
	<div>관리자 디자인 처리하기</div>
	<hr/>
	<div>신규회원 : ${memberCnt} 건</div>
	<div>방명록 새글 : ${guestCnt} 건</div>
	<div>게시판 새글 : ${boardCnt} 건</div>
	<hr/>
	<div>탈퇴신청중인 회원 : ${memberDeleteCnt} 건 (<a href="javascript:memberDeleteOk()">영구삭제</a>)</div>
</div>
<p><br/></p>
</body>
</html>