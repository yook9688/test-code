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
String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String)session.getAttribute("userID");
	}
	int pageNum = 1;
	if(request.getParameter("pageNum")!=null){
		pageNum = Integer.parseInt(request.getParameter("pageNum"));
	}
%>
        <header class="hd">
            <nav class="tnb">
                <ul class="top_menu">
                    <li>
                                           <%
           				 if(userID == null){
           					 %>
       					 <a href="admin.jsp" class="login">관리자모드</a>
           				 <a href="login.jsp" class="login">로그인</a>
           				 <a href="join.jsp" class="login">회원가입</a>
           	 <%
            }else {
         	   %>
         	   <a href="admin.jsp" class="login">관리자모드</a>
         	   <a href="edit.jsp" class="login">정보수정</a>
         	   <a href="logoutAction.jsp" class="login">로그아웃</a>
                  <%
            }
                  %> 

                    </li>
                </ul>
            </nav>
            <nav class="gnb">
                <ul class="bot_menu">
                    <li>
                        <a href="index.jsp"><img src="./img/logo.png" alt=""></a>
                        <a href="#">회사소개</a>
                        <a href="#">제품정보</a>
                        <a href="#">고객지원</a>
                        <a href="#">구매하기</a>
                    </li>
                </ul>
                <div class="submenu">
                    <ul>
                        <a href="#">비전</a>
                        <a href="#">연혁</a>
                        <a href="#">스파클BI</a>
                        <a href="#">오시는 길</a>
                    </ul>
                    <ul>
                        <a href="#">제품소개</a>
                        <a href="#">수원지정보</a>
                        <a href="#">생산공정</a>
                        <a href="#">수질분석표</a>
                        <a href="#">물류센터</a>
                    </ul>
                    <ul>
                        <a href="#">자주묻는질문</a>
                        <a href="notice.jsp">공지사항</a>
                    </ul>
                    <ul>
                        <a href="">스파클몰</a>
                    </ul>  
                </div>
            </nav>
        </header>
</body>
</html>