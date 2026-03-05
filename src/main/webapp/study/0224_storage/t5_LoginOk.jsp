<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t5_LoginOk.jsp -->
<%
	String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
	String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");

	if(!mid.equals("admin") || !pwd.equals("1234")) {
%>
		<script>
			alert("로그인 실패~ \n 회원정보르 확인하ㅣㅅ누 수 다시 호그린해주세여");
			location.href = "t5_Login.jsp";
		</script>
<%
	} 
	else { 
		session.setAttribute("sLogin", "OK");
%>
		<script>
			alert("<%=mid%>님 로그인 되셨스비낟");
			location.href = "t5_LoginMain.jsp";
		</script>
<%} %>