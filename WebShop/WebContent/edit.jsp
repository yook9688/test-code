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
        <p id="point_txt" style="font-weight: 550; text-align: center; font-size: 40px; margin-top: 200px; margin-bottom: 50px;">회원정보수정<p>
            <div class="login_form">
                <form action="editAction.jsp" method="post">
                    <label>비밀번호</label>
                    <input type="text" placeholder="비밀번호" name="userPassword"><br>
                    <label>회원이름</label>
                    <input type="text"  name="userName"><br>
                    <label> 이메일</label>
                    <input type="text"  name="userEmail"><br>
                    <input type="submit" value="수정">
                </form>
               <a href="delete.jsp">회원탈퇴</a>
            </div>
        </div>
		<jsp:include page="footer.jsp"></jsp:include>
    </div>   
</body>
</html>