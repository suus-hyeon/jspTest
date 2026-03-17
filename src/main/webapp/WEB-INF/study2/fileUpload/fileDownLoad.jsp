<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>fileDownLoad.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <link rel="stylesheet" type="text/css" href="${ctp}/css/orangeLink.css"/>
  <script>
    'use strict';
    
    function delCheck(file) {
    	let ans = confirm("선택된 파일을 삭제하시겠습니까?");
    	if(!ans) return false;
    	
    	$.ajax({
    		url  : 'FileDelete.st',
    		type : 'post',
    		data : {file : file},
    		success:(res) => {
    			if(res != '0') {
    				alert("파일이 삭제처리 되었습니다.");
    				location.reload();
    			}
    		},
    		error : () => alert("전송오류!")
    	});
    }
    
    // 전체선택
    function allCheck() {
      for(let i=0; i<myform.fileFlag.length; i++) {
        myform.fileFlag[i].checked = true;
      }
    }

    // 전체취소
    function allReset() {
      for(let i=0; i<myform.fileFlag.length; i++) {
        myform.fileFlag[i].checked = false;
      }
    }
    
    // 선택반전
    function reverseCheck() {
    	for(let i=0; i<myform.fileFlag.length; i++) {
        myform.fileFlag[i].checked = !myform.fileFlag[i].checked;
	    }
    }
    
    // 선택 항목 삭제처리
    function selectFileDelete() {
				    	
    }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>저장된 파일 정보</h2>
  <hr/>
	<form name="myform">
		<div class="row mb-2">
			<div class="col input-group">
		    <input type="button" value="전체선택" onclick="allCheck()" class="btn btn-success btn-sm me-1"/>
		    <input type="button" value="전체취소" onclick="allReset()" class="btn btn-primary btn-sm me-1"/>
		    <input type="button" value="선택반전" onclick="reverseCheck()" class="btn btn-info btn-sm me-1"/>
		    <input type="button" value="선택항목삭제" onclick="selectFileDelete()" class="btn btn-danger btn-sm" />
		  </div>
		  <div class="col text-end">
	    	<a href="FileUploadForm.st" class="btn btn-warning btn-sm">돌아가기</a>
	 		</div>
		</div>
		<table class="table table-bordered align-middle">
			<c:forEach var="file" items="${files}" varStatus="st">
				<tr>
					<td>
						<input type="checkbox" name="fileFlag" id="fileFlag${st.index}"  value="${file}" /> ${st.count}
					</td>
					<td>파일명 : ${file}</td>
					<td>
						<c:set var="fNameArr" value="${fn:split(file,'.')}" />
						<c:set var="extName" value="${fn:toLowerCase(fNameArr[fn:length(fNameArr)-1])}" />
						<font color="blue">
							<c:if test="${exName == 'zip' }">압축파일</c:if>
							<c:if test="${extName == 'hwp' }">한글문서파일</c:if>
							<c:if test="${extName == 'ppt' }">파워포인트파일</c:if>
							<c:if test="${extName == 'xls' }">엑셀파일</c:if>
							<c:if test="${extName == 'pdf' }">PDF파일</c:if>
							<c:if test="${extName == 'txt' }">텍스트문서파일</c:if>
						</font>
		     		 <c:if test="${extName == 'jpg' || extName == 'gif' || extName == 'png'}">
		           <a href="${ctp}/images/fileUpload/${file}" target="_blank"><img src="${ctp}/images/fileUpload/${file}" width="150px"/></a>
		      	 </c:if>
					</td>
					<td class="text-center">
					  <a href="${ctp}/images/fileUpload/${file}" download="${file}" class="badge bg-primary">다운로드</a>
		        <a href="javascript:delCheck('${file}')" class="badge bg-danger">삭제</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	  <hr/>
	  <div>
	    <a href="FileUploadForm.st" class="btn btn-warning">돌아가기</a>
	  </div>
	</form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>