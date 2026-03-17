<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>fileUpload1.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <script>
  	'use strict';
  	
  	function fCheck() {
    	let fName = document.getElementById("file").value;
    	let maxSize = 1024 * 1024 * 10;	// 파일 최대용량을 10MByte로 설정
    	let ext = fName.substring(fName.lastIndexOf(".")+1).toLowerCase();
    	
    	if(fName.trim() == "") {
    		alert("업로드할 파일을 선택하세요잉");
    		return false;
    	}
    	
    	let fileSize = document.getElementById("file").files[0].size;
    	if(fileSize > maxSize) {
    		alert("업로드할 파일의 최대용량은 10MByte 입니다리미");
    	}
    	else if(ext != 'jpg' && ext != 'gif' && ext != 'png' && ext != 'zip' && ext != 'hwp' && ext != 'ppt' && ext != 'xls' && ext != 'pdf' && ext != 'txt') {
    		alert("업로드 가능파일은 'jpg/gif/png/zip/hwp/ppt/xls/pdf/txt'입니다리미");
    	}
    	else {
    		document.myform.submit();
    	}
  	}
  	
  	// 선택된 그림파일 미리보기
  	function imgCheck(e) {
    	if(e.files && e.files[0]) {
    		let reader = new FileReader();
    		reader.onload = function(e) {
    			document.getElementById("demoImg").src = e.target.result;
    		}
    		reader.readAsDataURL(e.files[0]);
    	}
    }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>싱글 fileUpload 연습</h2>
  <hr/>
  <h4>COS라이브러리를 이용한 파일 업로드</h4>
  <div>(https://servlets.com/cos/)</div>
  <hr/>
  <form name="myform" method="post" action="FileUpload1Ok.st" enctype="multipart/form-data">
    <div class="input-group">
	    <input type="file" name="fName" id="file" onchange="imgCheck(this)" class="form-control" />
	    <input type="button" value="파일업로드" onclick="fCheck()" class="btn btn-success"/>
    </div>
  </form>
  <hr/>
  <img id="demoImg" width="200px" /> 
  <div>
    <a href="FileUploadForm.st" class="btn btn-warning">돌아가기</a>
    <a href="FileDownLoad.st" class="btn btn-primary">다운로드폼으로 이동하기</a>
  </div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>