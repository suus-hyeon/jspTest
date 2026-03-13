<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("newLine", "\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>adminGuestList.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
	<link rel="stylesheet" type="text/css" href="${ctp}/css/orangeLink.css"/>
	<script>
		'use strict';
		
		function deleteCheck(idx) {
			let ans = confirm("현재 게시글을 삭제하시겠습니까?!?!?!");
			if(ans) location.href = "GuestDelete.gu?idx="+idx;
		}
	</script>
	<style>
		th {
			background-color: #eee !important;
			text-align: center;
		}
	</style>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2 class="text-center mb-3">방 명 록 리 스 트(페이징처리해씁니다)</h2>
	<table class="table table-borderless m-0 p-0">
		<tr>
			<td class="text-start">
			</td>
			<td class="text-end">
				<c:if test="${pag > 1}">
					<a href="AdminGuestList.ad?pag=1" title="첫페이지">◀◀</a>
					<a href="AdminGuestList.ad?pag=${pag-1}" title="이전페이지">◁</a>
				</c:if>
				<b>${pag}</b>/${totPage}
				<c:if test="${pag < totPage}">
					<a href="AdminGuestList.ad?pag=${pag+1}" title="다음페이지">▷</a>
					<a href="AdminGuestList.ad?pag=${totPage}" title="마지막페이지">▶▶</a>
				</c:if>
			</td>
		</tr>
	</table>
	<c:forEach var="vo" items="${vos}" varStatus="st">
		<table class="table table-borderless m-0 p-0">
			<tr>
				<td>번호 : ${curScrStartNo} &nbsp;
					<a href="javascript:deleteCheck(${vo.idx})" class="badge bg-danger">삭제</a>
				</td>
				<td class="text-end">방문IP : ${vo.clientIp}</td>
			</tr>
		</table>
		<table class="table table-bordered">
			<tr>
				<th>성명</th>
				<td>${vo.name}</td>
				<th>방문일자</th>
				<td>${vo.visitDate}</td>
			</tr>
			<tr>
				<th>메일주소</th>
				<td colspan="3">
				<c:if test="${empty vo.email || fn:length(vo.email)<=6 || fn:indexOf(vo.email, '.')==-1 || fn:indexOf(vo.email, '@')==-1}">- 없음 -</c:if>
				<c:if test="${!empty vo.email && fn:length(vo.email)>6 && fn:indexOf(vo.email, '.')!=-1 && fn:indexOf(vo.email, '@')!=-1}">${vo.email}</c:if>
				</td>
			</tr>
			<tr>
				<th>홈페이지</th>
				<td colspan="3">
					<c:if test="${empty vo.homePage || fn:length(vo.homePage)<=10 || fn:indexOf(vo.homePage, '.')==-1}">- 없음 -</c:if>
					<c:if test="${!empty vo.homePage && fn:length(vo.homePage)>10 && fn:indexOf(vo.homePage, '.')!=-1}"><a href="${vo.homePage}" target="_blank">${vo.homePage}</a></c:if>
				</td>
			</tr>
			<tr>
				<th>방문소감</th>
				<td colspan="3" style="height:200px">${fn:replace(vo.content, newLine, "<br/>")}</td>
			</tr>
		</table>
		<c:set var="curScrStartNo" value="${curScrStartNo - 1}"/>
	</c:forEach>
	
	<!-- 블록페이지 시작 -->
    <ul class="pagination" style="justify-content:center;">
      <c:if test="${pag > 1}">
        <li class="page-item"><a class="page-link" href="AdminGuestList.ad?pag=1">◀◀</a></li>
      </c:if>
      <c:if test="${curBlock > 0}">
        <li class="page-item"><a class="page-link" href="AdminGuestList.ad?pag=${curBlock * blockSize}">◁</a></li>
      </c:if>
    	<c:forEach var="i" begin="${curBlock * blockSize + 1}" end="${curBlock * blockSize + blockSize}" varStatus="St">
        <c:if test="${i <= totPage && i == pag}"><li class="page-item"><a class="page-link" href="AdminGuestList.ad?pag=${i}" style="color:red;font-weight:bold;">${i}</a></li></c:if>
        <c:if test="${i <= totPage && i != pag}"><li class="page-item"><a class="page-link" href="AdminGuestList.ad?pag=${i}">${i}</a></li></c:if>
      </c:forEach>
      <c:if test="${curBlock < lastBlock}">
        <li class="page-item"><a class="page-link" href="AdminGuestList.ad?pag=${curBlock * blockSize + blockSize + 1}">▷</a></li>
      </c:if>
      <c:if test="${pag < totPage}">
        <li class="page-item"><a class="page-link" href="AdminGuestList.ad?pag=${totPage}">▶▶</a></li>
      </c:if>
    </ul>
  <!-- 블록페이지 끝 -->

</div>
<p><br/></p>
</body>
</html>