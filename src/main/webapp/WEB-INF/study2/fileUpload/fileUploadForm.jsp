<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>fileUploadForm.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2>fileUpload 연습폼</h2>
	<hr/>
	<h4>COS라이브러리를 이용한 파일 업로드</h4>
	<div>(http://servlets.com/cos/)</div>
	<hr/>
	<div>
		<a href="FileUpload1.st" class="btn btn-success">파일업로드연습1</a>
	</div>
	<hr/>
	<div><a href="FileDownLoad.st" class="btn btn-primary">다운로드폼으로 이동하기</a></div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>