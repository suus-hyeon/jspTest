<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<pre>
		1.시작단과 끝단을 입력받아서 시작단과 끝단을 출력하시오.
		2.1번은 세로로 출력하고, 2번은 한줄에 입력된 열의 수만큼 출력하시오.
		3.images폴더의 그림 10장(11.jpg~20.jpg)를 순차적으로 출력하시오.
			단, 첫번째 그림과 마지막 그림에는 테두리를 표시하시오. 또 각 출력된 그림앞에는 순차번호(1,2,3)을 표시하시오.
		4.11.jpg~20.jpg그림을 배열에 저장시킨 후, 배열에 저장된 그림을 차례대로 출력하시오.
	</pre>
	<div>
		<form>
			<div class="input-group">
				<input type="number" name="startdan" value="${param.startdan}" class="form-control" />
				<input type="number" name="lastdan" value="${param.lastdan}" class="form-control" />
				<input type="submit" value="출력" class="btn btn-success" />
			</div>
		</form>
	</div>
		<c:if test="${!empty param.startdan && !empty param.lastdan}">
			<c:forEach var="dan" begin="${param.startdan}" end="${param.lastdan}">
				<h2 class="text-center"> ${dan}단</h2>
				<table class="text-center teble table-bordered mx-auto" style="width: 200px;">
					<c:forEach var="i" begin="1" end="9">
						<tr>
							<td>${dan} * ${i} = ${dan * i}</td>
						</tr>
					</c:forEach>
				</table>
			</c:forEach>
		</c:if>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>