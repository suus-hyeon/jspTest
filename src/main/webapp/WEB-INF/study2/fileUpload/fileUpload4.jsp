<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>fileUpload4.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <script>
  	'use strict';
  	
  	function fCheck() {
    	let fName = document.getElementById("file").value;
    	let maxSize = 1024 * 1024 * 20;	// 파일 최대용량을 10MByte로 설정
    	let ext = '';
    	let fileSize = 0;
    	let fNames = '';
    	
    	if(fName.trim() == "") {
    		alert("업로드할 파일을 선택하세요잉");
    		return false;
    	}
    	
    	let fileLength = document.getElementById("file").files.length;
    	
    	for(let i=0; i<fileLength; i++) {
    		fName = document.getElementById("file").files[i].name;
    		ext = fName.substring(fName.lastIndexOf(".")+1).toLowerCase();
    		fileSize += document.getElementById("file").files[i].size;
    		if(ext != 'jpg' && ext != 'gif' && ext != 'png' && ext != 'zip' && ext != 'hwp' && ext != 'ppt' && ext != 'xls' && ext != 'pdf' && ext != 'txt') {
      		alert("업로드 가능파일은 'jpg/gif/png/zip/hwp/ppt/xls/pdf/txt'입니다리미");
        }
    		fNames += fName + "/";
    	}
    	
    	if(fileSize > maxSize) {
    		alert("업로드할 파일의 최대용량은 20MByte 입니다리미");
    	}
    	else {
    		document.getElementById("fNames").value = fNames;
    		document.myform.submit();
    	}
  	}
  	
  	// 파일 박스 추가하기
  	let cnt = 1;
  	function fileBoxAppend() {
  		cnt++;
  		let fileBox = '';
  		fileBox += '<div id="fBox'+cnt+'">';
  		fileBox += '<input type="file" name="fName'+cnt+'" id="file'+cnt+'" class="form-control mb-2" style="float:left; width:85%" />';
  		fileBox += '<input type="button" value="삭제" onclick="deleteBox('+cnt+')" class="btn btn-danger mb-2" style="width:10%" />';
  		fileBox += '</div>';
  		$("#fileBox").append(fileBox);
  	}
  	
  	// 파일 박스 삭제
  	function deleteBox(cnt) {
  		$("#fBox"+cnt).remove();
  	}
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>멀티 fileUpload 연습1</h2>
  <hr/>
  <h4>COS라이브러리를 이용한 파일 업로드</h4>
  <div>(https://servlets.com/cos/)</div>
  <hr/>
  <form name="myform" method="post" action="FileUpload4Ok.st" enctype="multipart/form-data">
    <div>
	    <input type="file" name="fName" id="file" multiple class="form-control" accept="'.jpg','.gif','.png','.xls','.zip','.ppt','.doc'" /><br/>
    </div>
    <div>
	    <input type="button" value="파일업로드" onclick="fCheck()" class="btn btn-success" />
	    <input type="hidden" name="fNames" id="fNames" />
    </div>
  </form>
  <hr/>
  <div>
    <a href="FileUploadForm.st" class="btn btn-warning">돌아가기</a>
    <a href="FileDownLoad.st" class="btn btn-primary">다운로드폼으로 이동하기</a>
  </div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>