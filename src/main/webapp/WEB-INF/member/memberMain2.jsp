<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>memberMain.jsp</title>
    <%@ include file="/include/bs5.jsp" %>
    <style>
        body { background-color: #f4f7f6; }
        .main-card { border-radius: 15px; box-shadow: 0 5px 15px rgba(0,0,0,0.08); background-color: white; }
        .status-box { background: #f8f9fa; border-left: 5px solid #0d6efd; padding: 20px; border-radius: 10px; }
        #myGuestbookList { min-height: 100px; }
    </style>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
    <div class="main-card p-5">
        <h2 class="text-center mb-4">회원 전용 메인</h2>
        <hr/>
        
        <div class="status-box mb-5">
            <div class="row align-items-center">
                <div class="col-md-8">
                    <h4>안녕하세요, <b class="text-primary">${sNickName}</b>님!</h4>
                    <p class="text-muted mb-0">현재 등급: <span class="badge bg-danger">${strLevel}</span> (Level: ${sLevel})</p>
                </div>
                <div class="col-md-4 text-md-end mt-3 mt-md-0">
                    <div class="p-2 bg-white rounded shadow-sm border text-center">
                        <small class="text-muted d-block">총 방문 횟수</small>
                        <span class="h3 fw-bold text-dark">${sVisitCount}회</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="guestbook-section">
            <h5 class="fw-bold mb-3"><i class="fa-solid fa-book me-2"></i>내가 남긴 방명록 기록</h5>
            <div id="myGuestbookList" class="border rounded p-3 bg-light">
                <div class="text-center py-4">
                    <div class="spinner-border text-primary" role="status"></div>
                    <p class="mt-2 text-muted">기록을 불러오는 중입니다...</p>
                </div>
            </div>
        </div>

        <hr class="my-5"/>
        
        <div class="text-center">
            <div class="btn-group shadow-sm">
                <a href="${ctp}/____.do" class="btn btn-outline-secondary">정보 수정</a>
                <a href="${ctp}/GuestList.gu" class="btn btn-outline-primary">방명록 가기</a>
                <a href="${ctp}/MemberLogout.mem" class="btn btn-danger">로그아웃</a>
            </div>
        </div>
    </div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />

<script>
    $(function() {
        getMyGuestbook();
    });

    function getMyGuestbook() {
        $.ajax({
            url : "${ctp}/GuestbookMyList", 
            type : "post",
            data : { "mid" : "${sMid}" },
            success : function(res) {
                if(res == "0" || res == "") {
                    $("#myGuestbookList").html("<p class='text-center text-muted py-4 mb-0'>아직 작성한 방명록 글이 없습니다.</p>");
                } else {
                    $("#myGuestbookList").html(res);
                }
            },
            error : function() {
                $("#myGuestbookList").html("<p class='text-center text-danger py-4 mb-0'>데이터를 불러오지 못했습니다.</p>");
            }
        });
    }
</script>
</body>
</html>