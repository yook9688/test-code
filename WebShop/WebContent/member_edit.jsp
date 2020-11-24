<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="WebShop.DBcon" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ include file="admin_header.jsp" %>
<style>
.con_wrap {width: 1000px; margin: 0 auto; }
.con_tit h2 {text-align: center; margin: 50px 0px;}
.con_box table {width: 800px; border: 1px solid #000; margin: 0 auto;}
.con_box table th {width: 25%; border: 1px solid #000; text-align: center;}
.con_box table td {width: 25%; border: 1px solid #000; text-align: center;}
</style>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	String userId = request.getParameter("userID");
	
	try {
		conn = DBcon.getConnection();
		String sql = "select * from spakle_member where userid='"+userId+"'";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			String userName = rs.getString("username");
			String userEmail = rs.getString("useremail");
			
		
%>
		<div class="content">
			<div class="con_wrap">
				<div class="con_tit"><h2>회원정보 수정</h2></div>
				<div class="con_box">
					<form name="edit1" id="edit1" action="member_update.jsp" method="post">
						<table>
							<tbody>
								<tr>
									<th><label for="m_id">아이디</label></th>
									<td><input type="text" id=m_id name="userId" value=<%=userId %> readonly /></td>	
								</tr>
								<tr>
									<th><label for="m_pwd">비밀번호</label></th>
									<td><input type="password" id=m_pwd name="userPassword" /></td>	
								</tr>
								<tr>
									<th><label for="m_name">회원성명</label></th>
									<td><input type="text" id=m_phone name="userName" value="<%=userName%>" readonly/></td>	
								</tr>
								<tr>
									<th><label for="m_address">회원이메일</label></th>
									<td><input type="email" id=m_address name="userEmail" value="<%=userEmail%>" readonly/></td>	
								</tr>
								<tr>
								<td colspan="2">
									<input type="button" id="submit_btn" value="수정" />
									<input type="button" id="cancel_btn" value="취소" />
								</td>	
								</tr>
							</tbody>
							<% 
							}
							%>
						</table>
					</form>
					<% } catch(Exception e) {
						System.out.println("DB 오류 : "+e);
						}
					%>
					<script>
					var form = document.forms["edit1"];
			        var submit_btn = document.getElementById("submit_btn");
			        var search_btn = document.getElementById("cancel_btn");
			        var userId = form["userId"];
			        var userPassword = form["userPassword"];
			        var userName = form["userName"];
			        var userEmail = form["userEmail"];
			        
			        submit_btn.addEventListener("click" , function(e){
			            if(userId.value==null || userId.value=="") {
			               alert("회원아이디가 입력되지 않았습니다.");
			               userId.focus();
			               return false;
			            }
			            if(userPassword.value==null || userPassword.value==""){
			               alert("회원 비밀번호가 입력되지 않았습니다.")
			               userPassword.focus();
			               return false;
			            }
			            if(userName.value==null || userName.value=="") {
			               alert("회원 성명이 입력되지 않았습니다.");
			               userName.focus();
			               return false;
			            }
			            if(userEmail.value==null || userEmail.value==""){
			               alert ("회원 이메일이 입력되지 않았습니다.");
			               userEmail.focus();
			               return false;
			            }
			            if(userId.value!="" && userPassword.value!="" && userName.value!="" && userEmail.value!=""){
			               form.submit();
			            }
			            
			         });
			         
			         cancel_btn.addEventListener("click",function(){
			            location.href = "member_updatelist.jsp";
			         });
					</script>
				</div>
			</div>
		</div>
<%@ include file="admin_footer.jsp" %>