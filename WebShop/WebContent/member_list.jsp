<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="WebShop.DBcon"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ include file="admin_header.jsp"%>
<style>
.con_wrap {width: 100%; margin: 0 auto; }
.con_tit h2 {text-align: center; margin: 50px 0px;}
.con_box table {width: 1200px; border: 1px solid #000; margin: 0 auto;}
.con_box table th {width: auto; border: 1px solid #000; text-align: center;}
.con_box table td {width: auto; border: 1px solid #000; text-align: center;}
.custno {font-weight: bold;}
</style>
<div class="content">
	<div class="con_wrap">
		<div class="con_tit">
			<h2>회원목록조회</h2>
		</div>
		<div class="con_box">
			<table>
				<thead>
					<tr>
						<th>회원 아이디</th>
						<th>회원 성명</th>
						<th>회원 이메일</th>
					</tr>
				</thead>
				<tbody>
					<%
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs;

					try {
						conn = DBcon.getConnection();
						String sql = "select * from spakle_member order by username asc";

						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();

						while (rs.next()) {
							String userId = rs.getString("userid");
							String userName = rs.getString("username");
							String userEmail = rs.getString("useremail");
					%>
					<tr>
						<td><%=userId%></td>
						<td class="username"><%=userName%></td>
						<td class="useremail"><%=userEmail%></td>
					</tr>
					<% 
					 } 
					%>
				</tbody>
			</table>
			<% } catch(Exception e) {
				System.out.println("DB Connection error : "+e);
				}
					%>
		</div>
	</div>
</div>
<%@ include file="admin_footer.jsp"%>