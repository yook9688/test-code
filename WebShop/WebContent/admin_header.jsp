<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
</head>
<body>
<%
	session.setAttribute("id", "admin");
%>
<%
	if(session.getAttribute("id") != "admin") {
%>
<script>
	alert("관리자계정으로 로그인하지 않으셨습니다. 현재 페이지는 관리자의 로그인이 필요합니다.");
	history.go(-1);
</script>
<% 	
	} else {
%>
<script>
	$(document).ready(function(){
		alert("관리자님 환영합니다.");		
	});
</script>
<%		
	}
%>
        <header class="hd">
            <nav class="tnb">
                <ul class="top_menu">
                    <li>
                        <span>관리자모드</span>
                        <a href="index.jsp" class="login">홈으로</a>
                        <a href="logoutAction.jsp" class="login">로그아웃</a>
                    </li>
                </ul>
            </nav>
            <nav class="gnb">
                <ul class="bot_menu">
                    <li>
                        <a href="index.jsp"><img src="./img/logo.png" alt=""></a>
                        <a href="#">회원관리</a>
                        <a href="#">제품관리</a>
                        <a href="#">게시판관리</a>
                        <a href="#">CS관리</a>
                    </li>
                </ul>
                <div class="submenu">
                    <ul>
                        <a href="#">회원목록조회</a>
                        <a href="#">회원권한수정</a>
                        <a href="#">제제회원 관리</a>
                    </ul>
                    <ul>
                        <a href="#">제품목록조회</a>
                        <a href="#">제품 등록</a>
                        <a href="#">제품 수정</a>
                        <a href="#">제품 삭제</a>
                    </ul>
                    <ul>
                        <a href="#">공지사항 관리</a>
                        <a href="#">이벤트 관리</a>
                        <a href="#">리뷰 관리</a>
                    </ul>
                    <ul>
                        <a href="">1:1문의 관리</a>
                        <a href="">Q&A관리</a>
                    </ul>  
                </div>
            </nav>
        </header>
</body>
</html>