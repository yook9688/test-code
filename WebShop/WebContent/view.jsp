<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="notice.NoticeBeans" %>
    <%@ page import="notice.NoticeDAO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스파클</title>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/view.css">
</head>
<body>
<%


String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String)session.getAttribute("userID");
	}
	int num = 0;
	if(request.getParameter("num") != null){
		num = Integer.parseInt(request.getParameter("num"));
	}
	if (num == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지않은 글입니다.')");
		script.println("location.href = 'notice.jsp'");
		script.println("</script>");
	}
	NoticeBeans nb = new NoticeDAO().getBbs(num);
	
%>
    <div class="wrap">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="contents">
           <div class="row">
          
            <table style ="text-align:center; border:1px solid #dddddd" >
           <thead>
           <tr>
           <th colspan="3">글보기</th>
           	
           </tr>
           </thead>
           <tbody>
           <tr>
           <td style="width : 20%;">글제목 </td>
  			<td  colspan="2"><%= nb.getTitle() %> </td>
           </tr>
            <tr>
           <td style="width : 20%;">작성자 </td>
  			<td  colspan="2"><%= nb.getUserID() %> </td>
           </tr>
             <tr>
           <td style="width : 20%;">내용 </td>
  			<td  colspan="2" style="min-height:200px; text-align:left;"><%= nb.getContent() %> </td>
           </tr>
           </tbody> 
           
           </table>
           <input class="btn" type="button"  value="목록으로" onclick="location.href='notice.jsp'"/>
           
           </div>
                   
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>   
</body>
</html>