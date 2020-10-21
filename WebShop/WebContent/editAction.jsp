<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="user.UserDAO" %>
    <%@ page import="user.UserBeans" %>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Connection" %>
    
    <% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String userPassword = request.getParameter("userPassword");
	String userName = request.getParameter("userName");
	String userEmail = request.getParameter("userEmail");
	
	 Connection conn = null;
	 PreparedStatement pstm = null;
	 ResultSet rs = null;
	
		try {
			 String url = "jdbc:oracle:thin:@localhost:1521:XE";
			 String user = "yook9688";
			 String pwd = "1234";
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 conn = DriverManager.getConnection(url,user,pwd);
			
		}catch(Exception e) {
			System.out.println("접속오류");
			e.printStackTrace();
		}
			String SQL ="UPDATE member SET userPassword=?,userName=?,userEmail=?";
			try {
				pstm = conn.prepareStatement(SQL);				
				pstm.setString(1, userPassword);
				pstm.setString(2, userName);
				pstm.setString(3, userEmail);
				pstm.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('수정완료')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		
	
	%>

</body>
</html>