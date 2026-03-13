<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>adminMemberList.jsp</title>
	<%@ include file="/include/bs5.jsp" %>
	<script>
		'use strict';
		
		function levelChange(e) {
			let ans = confirm("선택한 회원의 등급을 변경하시겠습니까?");
			if(!ans) {
				location.reload();
				return false;
			}
			let imsi = e.value.split("/");
			let query = {
					level : imsi[0],
					idx   : imsi[1]
			}
			
			$.ajax({
				url : 'MemberLevelChange.ad',
			type : 'get',
			data : query,
			success:function(res) {
				if(res != '0') {
					alert('등급 수정 완료');
					location.reload();
				}
				else alert("등급 수정 실패");
			},
			error : () => alert("전송오류")
			});
			
		}
		
	    // 전체선택
	    function allCheck() {
	      for(let i=0; i<myform.idxFlag.length; i++) {
	        myform.idxFlag[i].checked = true;
	      }
	    }

	    // 전체취소
	    function allReset() {
	      for(let i=0; i<myform.idxFlag.length; i++) {
	        myform.idxFlag[i].checked = false;
	      }
	    }
	    
	    // 선택반전
	    function reverseCheck() {
	    	for(let i=0; i<myform.idxFlag.length; i++) {
	        myform.idxFlag[i].checked = !myform.idxFlag[i].checked;
		    }
	    }
	    
	    // 선택회원 보기
	    function levelSelectCheck() {
	    	let level = $("#levelSelect").val();
	    	location.href= "AdminMemberList.ad?level="+level;
	    }
	</script>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2 class="text-center mb-3">전 체 회 원 리 스 트</h2>
	<div class="row">
    <div class="col input-group">
    	<input type="button" value="전체선택" onclick="allCheck()" class="btn btn-success btn-sm me-1"/>
      <input type="button" value="전체취소" onclick="allReset()" class="btn btn-primary btn-sm me-1"/>
      <input type="button" value="선택반전" onclick="reverseCheck()" class="btn btn-info btn-sm me-1"/>
      <select name="levelItem" id="levelItem" class="form-select">
      	<option value="1">준회원</option>
	  		<option value="2">정회원</option>
	  		<option value="3">우수회원</option>
      </select>
      <input type="button" value="선택항목등급변경" onclick="" class="btn btn-success btn-sm"/>
    </div>
		<div class="col">
		<select name="levelSelect" id="levelSelect" class="form-select" onchange="levelSelectCheck()">
			<option value="888" ${level == 888 ? 'selected' : ''}>전체보기</option>
			<option value="1"   ${level == 1 ? 'selected' : ''}>준회원</option>
			<option value="2"   ${level == 2 ? 'selected' : ''}>정회원</option>
			<option value="3"   ${level == 3 ? 'selected' : ''}>우수회원</option>
			<option value="99"  ${level == 99 ? 'selected' : ''}>탈퇴신청회원</option>
			<option value="0"   ${level == 0 ? 'selected' : ''}>관리자</option>
		</select>
    </div>
  </div>
	<form name="myform">
		<table class="table table-hover">
			<tr class="table-secondary text-center">
				<th>번호</th>
				<th>닉네임</th>
				<th>아이디</th>
				<th>성명</th>
				<th>최종방문일</th>
				<th>공개유무</th>
				<th>활동여부</th>
				<th>현재레벨</th>
			</tr>
			<c:forEach var="vo" items="${vos}" varStatus="st">
				<tr class="text-center"	>
					<td>
						<c:if test="${vo.level != 0}"><input type="checkbox" name="idxFlag" id="idxFlag${vo.idx}" value="${vo.idx}" /></c:if>
						${curScrStartNo}
					</td>
					<td>${vo.nickName}</td>
						<td>${vo.mid}</td>
						<td>${vo.name}</td>
						<td>${fn:substring(vo.lastDate,0,16)}</td>
						<td>${vo.userInfor}</td>
						<%-- <td>${vo.userDel=='NO'?'활동중':'<font color=red>탈퇴신청</font>'}</td> --%>
						<td>
							<c:if test="${vo.userDel == 'NO'}">활동중</c:if>
							<c:if test="${vo.userDel != 'NO'}">
								<font color=red>탈퇴</font><br/>(<font color=blue><b>${pastDate}</b></font>일 경과)
							</c:if>
						</td>
						<td>
							<c:if test="${vo.level != 0}">
								<select name="level" id="level" onchange='levelChange(this)'>
									<option value="1/${vo.idx}" ${vo.level == 1 ? 'selected' : ''}>준회원</option>
									<option value="2/${vo.idx}" ${vo.level == 2 ? 'selected' : ''}>정회원</option>
									<option value="3/${vo.idx}" ${vo.level == 3 ? 'selected' : ''}>우수회원</option>
									<option value="99/${vo.idx}" ${vo.level == 99 ? 'selected' : ''}>탈퇴신청회원</option>
								</select>
							</c:if>
							<c:if test="${vo.level == 0}">관리자</c:if>
						</td>
				</tr>
				<c:set var="curScrStartNo" value="${curScrStartNo - 1}"/>
			</c:forEach>
		</table>
	</form>
</div>

		<!-- 블록페이지 시작 -->
    <ul class="pagination" style="justify-content:center;">
      <c:if test="${pag > 1}">
        <li class="page-item"><a class="page-link" href="AdminMemberList.ad?pag=1&level=${level}">◀◀</a></li>
      </c:if>
      <c:if test="${curBlock > 0}">
        <li class="page-item"><a class="page-link" href="AdminMemberList.ad?pag=${curBlock * blockSize}&level=${level}">◁</a></li>
      </c:if>
    	<c:forEach var="i" begin="${curBlock * blockSize + 1}" end="${curBlock * blockSize + blockSize}" varStatus="St">
        <c:if test="${i <= totPage && i == pag}"><li class="page-item"><a class="page-link" href="AdminMemberList.ad?pag=${i}&level=${level}" style="color:red;font-weight:bold;">${i}</a></li></c:if>
        <c:if test="${i <= totPage && i != pag}"><li class="page-item"><a class="page-link" href="AdminMemberList.ad?pag=${i}&level=${level}">${i}</a></li></c:if>
      </c:forEach>
      <c:if test="${curBlock < lastBlock}">
        <li class="page-item"><a class="page-link" href="AdminMemberList.ad?pag=${curBlock * blockSize + blockSize + 1}&level=${level}">▷</a></li>
      </c:if>
      <c:if test="${pag < totPage}">
        <li class="page-item"><a class="page-link" href="AdminMemberList.ad?pag=${totPage}&level=${level}">▶▶</a></li>
      </c:if>
    </ul>
    <!-- 블록페이지 끝 -->

<p><br/></p>
</body>
</html>