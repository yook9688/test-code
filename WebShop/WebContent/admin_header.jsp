<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스파클 - 관리자모드</title>
<link rel="stylesheet" href="./css/admin_common.css">
<link rel="stylesheet" href="./css/admin_main.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
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
                        <a href="admin.jsp"><img src="./img/logo.png" alt=""></a>
                        <a href="member_list.jsp">회원관리</a>
                        <a href="member_search.jsp">매출관리</a>
                        <a href="#">게시판관리</a>
                        <a href="#">CS관리</a>
                    </li>
                </ul>
                <div class="submenu">
                    <ul>
                        <a href="member_list.jsp">회원목록조회</a>
                        <a href="member_updateList.jsp">회원정보수정</a>
                    </ul>
                    <ul>
                        <a href="member_search.jsp">회원매출조회</a>
                    </ul>
                    <ul>
                        <a href="#">공지사항 관리</a>
                    </ul>
                    <ul>
                        <a href="#">1:1문의 관리</a>
                        <a href="#">FAQ관리</a>
                    </ul>  
                </div>
            </nav>
        </header>
</body>
</html>