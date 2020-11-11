<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="WebShop.DBcon" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	String userId = request.getParameter("userId");
	System.out.println(userId);
	try {
		conn = DBcon.getConnection();
		String sql = "update spakle_member set  userpassword=?, username=?, useremail=? where userid='"+userId+"'";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("userPassword"));
		pstmt.setString(2, request.getParameter("userName"));
		pstmt.setString(3, request.getParameter("userEmail"));
		pstmt.executeQuery();
		System.out.println("회원정보 수정 성공");
		
	} catch(Exception e) {
		System.out.println("데이터 베이스 오류"+e);
	}
	%>
	<script>
		alert("회원정보수정 성공")
		location.href = "member_updateList.jsp"
	</script>
</body>
</html>