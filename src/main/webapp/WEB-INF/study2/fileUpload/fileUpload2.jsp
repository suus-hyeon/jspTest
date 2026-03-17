<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>fileUpload2.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <script>
  	'use strict';
  	
  	function fCheck() {
    	let fName1 = document.getElementById("file1").value;
    	let fName2 = document.getElementById("file2").value;
    	let fName3 = document.getElementById("file3").value;
    	let maxSize = 1024 * 1024 * 10;	// 파일 최대용량을 10MByte로 설정
    	let ext1 = fName1.substring(fName1.lastIndexOf(".")+1).toLowerCase();
    	let ext2 = fName2.substring(fName2.lastIndexOf(".")+1).toLowerCase();
    	let ext3 = fName3.substring(fName3.lastIndexOf(".")+1).toLowerCase();
    	
    	if(fName1.trim() == "" || fName2.trim() == "" || fName3.trim() == "") {
    		alert("업로드할 파일을 선택하세요잉");
    		return false;
    	}
    	
    	let fileSize1 = document.getElementById("file1").files[0].size;
    	let fileSize2 = document.getElementById("file2").files[0].size;
    	let fileSize3 = document.getElementById("file3").files[0].size;
    	if(fileSize1 > maxSize || fileSize2 > maxSize || fileSize3 > maxSize) {
    		alert("업로드할 파일의 최대용량은 10MByte 입니다리미");
    	}
    	else if(ext1 != 'jpg' && ext1 != 'gif' && ex1t != 'png' && ext1 != 'zip' && ext1 != 'hwp' && ext1 != 'ppt' && ext1!= 'xls' && ext1 != 'pdf' && ext1 != 'txt') {
    		alert("업로드 가능파일은 'jpg/gif/png/zip/hwp/ppt/xls/pdf/txt'입니다리미");
    	}
    	else if(ext2 != 'jpg' && ext2 != 'gif' && ext2 != 'png' && ext2 != 'zip' && ext2 != 'hwp' && ext2 != 'ppt' && ext2 != 'xls' && ext2 != 'pdf' && ext2 != 'txt') {
    		alert("업로드 가능파일은 'jpg/gif/png/zip/hwp/ppt/xls/pdf/txt'입니다리미");
    	}
    	else if(ext3 != 'jpg' && ext3 != 'gif' && ex3 != 'png' && ext3 != 'zip' && ext3 != 'hwp' && ext3 != 'ppt' && ext3 != 'xls' && ext3 != 'pdf' && ext3 != 'txt') {
    		alert("업로드 가능파일은 'jpg/gif/png/zip/hwp/ppt/xls/pdf/txt'입니다리미");
    	}
    	else {
    		document.myform.submit();
    	}
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
  <form name="myform" method="post" action="FileUpload2Ok.st" enctype="multipart/form-data">
    <div>
	    <input type="file" name="fName1" id="file1" class="form-control" accept="'.jpg','.gif','.png','.xls','.zip','.ppt','.doc'" /><br/>
	    <input type="file" name="fName2" id="file2" class="form-control" accept="'.jpg','.gif','.png','.xls','.zip','.ppt','.doc'" /><br/>
	    <input type="file" name="fName3" id="file3" class="form-control" accept="'.jpg','.gif','.png','.xls','.zip','.ppt','.doc'" /><br/>
	    <input type="button" value="파일업로드" onclick="fCheck()" class="btn btn-success"/>
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