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
    <link rel="stylesheet" href="./css/write.css">
</head>
<body>
<%


String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String)session.getAttribute("userID");
	}
%>

    <div class="wrap">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="contents">
           <div class="row" style="margin-top:300px;">
           <form method="post" action="writeAction.jsp ">
            <table style ="text-align:center; border:1px solid #dddddd" >
           <thead>
           <tr>
           <th colspan="2">글쓰기</th>
           	
           </tr>
           </thead>
           <tbody>
           <tr>
           <td><input type="text" placeholder="글 제목 " name="title" maxlength="50" /></td>
           </tr>
           <tr>
           <td><textarea placeholder="내용 " name="content" maxlength="2048"></textarea> </td>
  
           </tr>
           </tbody> 
           
           </table>
           <input class="btn" type="submit"  value="글쓰기"/>
            </form>
           </div>
                   
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>   
</body>
</html>