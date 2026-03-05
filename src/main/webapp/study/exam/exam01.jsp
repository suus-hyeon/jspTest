<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>exam01.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
	<p>콤보상자와 리스트박스안에 그림파일명을 (11.jpg~20.jpg)을 표시시켜주고, 해당 그림을 클릭하면 아이디 demo에 선택한 그림을 출력시키시오</p>
	<div>
		<select name="combo" onchange="show()" class="combo-select">
			<option>14.jpg</option>
				<% 
				for(int i=14; i<=23; i++) {
					out.println("<option><img src='"+request.getContextPath()+"/images/"+i+".jpg' width='200px' alt='"+i+".jpg'/></option>");
				}
				%>		
		</select>
		<br/>
		<select name="list" onchange="listshow()">
		</select>
	</div>
</div>

</body>
<script>
	'use strict';
	
	
	
	function show() {
		let img = '';
		if(img == 그림?) {
			
		}
	}
	

</script>
</html>