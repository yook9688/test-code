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
                <form action="loginAction.jsp" method="post">
                    <label for="">로그인</label> <br>
                    <label>아이디 &nbsp;&nbsp;</label>
                    <input type="text" placeholder="아이디" name="userID"><br>
                    <label>비밀번호</label>
                    <input type="password" placeholder="비밀번호" name="userPassword"><br>
                    <input type="submit" value="로그인">
                </form>
                <a href="newmem.jsp">회원가입하기</a>

            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>   
</body>
</html>