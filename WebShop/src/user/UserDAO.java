package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;



public class UserDAO {
	private Connection conn;
	private PreparedStatement pstm;
	private ResultSet rs;
	
	
	public UserDAO() {
		try {
//			String driver = ;
			 String url = "jdbc:oracle:thin:@localhost:1521:XE";
			 String user = "test9688";
			 String pwd = "1234";
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 conn = DriverManager.getConnection(url,user,pwd);
			
		}catch(Exception e) {
			System.out.println("접속오류");
			e.printStackTrace();
		}	
	}
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM spakle_member WHERE userID = ?";
		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, userID);		
			rs = pstm.executeQuery();
			if(rs.next()) {
			if(rs.getString(1).equals(userPassword)) {
				return 1;//성공
			}else {
				return 0; //실패(불일치)
			}
			}
			
		return -1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;	
	}
	public int join(UserBeans user) {
		String SQL ="INSERT INTO spakle_member VALUES (?,?,?,?)";
		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, user.getUserID());
			pstm.setString(2, user.getUserPassword());
			pstm.setString(3, user.getUserName());
			pstm.setString(4, user.getUserEmail());
			return pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //아이디 중복 (DB 컬럼 중 userID는 primary키로 아이디가 중복될 시 무결성 깨짐
	}

	public int delete(String userID) {
		String SQL ="DELETE spakle_member WHERE userID=? ";
		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, userID);
			return pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	
	
	
}
