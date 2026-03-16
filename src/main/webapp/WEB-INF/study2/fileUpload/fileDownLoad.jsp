<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>저장된 파일 정보</h2>
  <hr/>
	
	<table class="table table-bordered">
	<c:forEach var="file" items="${files}" varStatus="st">
		<tr>
			<td>파일명 : ${file}</td>
			<td>
				<c:set var="fNameArr" value="${fn:split(file,'.')}" />
				<c:set var="extName" value="${fn:toLowerCase(fNameArr[fn:length(fNameArr)-1])}" />
				<c:if test="${exName == 'zip' }">압축파일</c:if>
				<c:if test="${extName == 'hwp' }">한글문서파일</c:if>
				<c:if test="${extName == 'jpg' || extName == 'gif' || extName == 'png'}">
					<img src="${ctp}/images/fileUpload/${file}" width="150px"/>
				</c:if>
			</td>
		</tr>
	</c:forEach>
	</table>
  
  <hr/>
  <div>
    <a href="FileUploadForm.st" class="btn btn-warning">돌아가기</a>
  </div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>