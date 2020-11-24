<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스파클</title>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/join.css">
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

    <div class="wrap">
        <header class="hd">
            <nav class="tnb">
                <ul class="top_menu">
                    <li>
                                           <%
           				 if(userID == null){
           					 %>
           				 <a href="login.jsp" class="login">로그인</a>
           				 <a href="newmem.jsp" class="login">회원가입</a>
           	 <%
            }else {
         	   %>
         	   <a href="admin.jsp" class="login">정보수정</a>
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
                        <a href="">회사소개</a>
                        <a href="">제품정보</a>
                        <a href="">고객지원</a>
                        <a href="">구매하기</a>
                    </li>
                </ul>
                <div class="submenu">
                    <ul>
                        <a href="">비전</a>
                        <a href="">연혁</a>
                        <a href="">스파클BI</a>
                        <a href="">오시는 길</a>
                    </ul>
                    <ul>
                        <a href="">제품소개</a>
                        <a href="">수원지정보</a>
                        <a href="">생산공정</a>
                        <a href="">수질분석표</a>
                        <a href="">물류센터</a>
                    </ul>
                    <ul>
                        <a href="">자주묻는질문</a>
                        <a href="notice.jsp">공지사항</a>
                    </ul>
                    <ul>
                        <a href="">스파클몰</a>
                    </ul>  
                </div>
            </nav>
        </header>
        <div class="contents">
             <p id="point_txt" style="font-weight: 550; text-align: center; font-size: 40px;">회원가입<p>
             <div class="joinform">
                <p class="txt_star" id="point_txt" style="font-size: 14px;">필수 입력 사항</p>
                <form action="newmemAction.jsp" method="POST">
                    <p>
                        <label class="txt_star" for=""  id="join_label">아이디</label>
                        <input class="ip" type="text" name="userID" onkeydown="inputIdChk()">
          				<input type="button" value="중복확인" onclick="" />
          				<input type="hidden" name="idDuplication" value="idUncheck" />
                    </p>
                    <p>
                        <label class="txt_star" for=""  id="join_label">비밀번호</label>
                        <input  class="ip" type="password" name="userPassword">
                        <span>6 - 15자 이상 : 영문, 숫자 조합 </span>
                    </p>
                 
                    <p>
                        <label class="txt_star" for=""  id="join_label">이름</label>
                        <input  class="ip" type="text" name="userName">
                    </p>
                    <p>
                        <label class="txt_star" for="" name="id" id="join_label">이메일</label>
                        <input  class="ip" type="email" name="userEmail" >
                    </p>
                 
                    <input id="back" type="reset" value="취소하기">
                    <input id="next" type="submit" value="다음단계">
                </form>
                
             </div>
        </div>
        <footer class="ft">
                <ul>
                    <li><p>스파클㈜&nbsp;|&nbsp;서울 강서구 양천로59길 42(가양동, 태성빌딩 4F)&nbsp;|&nbsp;TEL : 02-2681-1781&nbsp;|&nbsp;FAX : 02-2681-1789</p></li>
                    <li><p>Copyright © SPARKLE Inc All Rights Reserved.</p></li>
                </ul>
        </footer>
    </div>   
</body>
</html>