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
    <div class="wrap">
       <jsp:include page="header.jsp"></jsp:include>
        <div class="contents">
             <p id="point_txt" style="font-weight: 550; text-align: center; font-size: 40px;">회원가입<p>
             <div class="joinform">
                <p class="txt_star" id="point_txt" style="font-size: 14px;">필수 입력 사항</p>
                <form action="joinAction.jsp" method="POST">
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
                    <input id="next" type="submit" value="회원가입">
                </form>
                
             </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>   
</body>
</html>