<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스파클</title>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/login.css">
</head>
<body>
    <div class="wrap">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="contents">
            <div class="login_form">
                   <h1>그동안 이용해 주셔서 감사합니다</h1><br>
                <h3>비밀번호를 입력해주십시요</h3>
               <form action="deleteAction.jsp" method="post">
               <input type="text" name="userPassword" />
               <input type="submit" value="탈퇴하기" />
               </form>

            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>   
</body>
</html>