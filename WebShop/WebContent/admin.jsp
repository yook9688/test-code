<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스파클-관리자모드</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    $(document).ready(function() {
        $(".main_btn_list li a").on("mouseover", function(){
            $(this).css({"color":"#fff"
                                       ,"background":"#363cff"});
        });
        $(".main_btn_list li a").on("mouseout", function(){
            $(this).css({"color":"#000"
                                       ,"background":"#bdd6ff"});
        });
    });
</script>
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
    <div class="wrap">
        <jsp:include page="admin_header.jsp"></jsp:include>
        <div class="contents">
            <div class="con_wrap">
                <h2>관리자 페이지 메인</h2>
                <h4>관리자님, 원하시는 작업메뉴를 선택해주세요</h4>
                <ul class="main_btn_list">
                    <li>
                        <span>회원관리</span>
                        <ul class="main_btn_box">
                            <li><a href="member_list.jsp">회원목록조회</a></li>
                            <li><a href="member_updateList.jsp">회원권한수정</a></li>
                            
                        </ul>
                    </li>
                    <li>
                        <span>매출관리</span>
                        <ul class="main_btn_box">
                            <li><a href="member_search.jsp">회원매출조회</a></li>
                        </ul>
                    </li>
                    <li>
                        <span>게시판관리</span>
                        <ul class="main_btn_box">
                            <li><a href="#">공지사항 관리</a></li>
                        </ul>
                    </li>
                    <li>
                        <span>CS관리</span>
                        <ul class="main_btn_box">
                            <li><a href="#">1:1문의 관리</a></li>
                            <li><a href="#">Q&A관리</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        <jsp:include page="admin_footer.jsp"></jsp:include>
    </div>
</body>
</html>