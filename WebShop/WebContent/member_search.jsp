<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="WebShop.DBcon"%>
<%@ include file="admin_header.jsp"%>
<style>
.con_wrap {width: 1000px; margin: 0 auto; }
.con_tit h2 {text-align: center; margin: 50px 0px;}
.con_box table {width: 800px; border: 1px solid #000; margin: 0 auto;}
.con_box table th {width: 25%; border: 1px solid #000; text-align: center;}
.con_box table td {width: 25%; border: 1px solid #000; text-align: center;}
</style>
<div class="content">
	<div class="con_wrap">
		<div class="con_tit">
			<h2>회원매출조회</h2>
		</div>
		<div class="con_box">
			<table>
				<thead>
					<tr>
						<th>회원아이디</th>
						<th>회원성명</th>
						<th>매출</th>
					</tr>
				</thead>
				<tbody>
					<%
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs;

					try {
						conn = DBcon.getConnection();
						String sql ="select a.userid, a.username, sum(b.price) total from spakle_member a join spakle_money b on a.userid = b.userid group by (a.userid, a.username) order by total desc";
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();

						while (rs.next()) {
							String userId = rs.getString("userid");
							String userName = rs.getString("username");
							String total = rs.getString("total");
					%>
					<tr>
						<td><%=userId%></td>
						<td><%=userName%></td>
						<td><%=total%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				} catch (Exception e) {
				System.out.println("DB Connection error : " + e);
			}
			%>
			<%@ include file="admin_footer.jsp"%>