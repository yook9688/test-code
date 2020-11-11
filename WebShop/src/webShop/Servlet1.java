package webShop;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet1 extends HttpServlet{
	public void init() throws ServletException {
		System.out.println("작업을 초기화합니다.");
	}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("작업이 진행중입니다. 잠시만 기다려주십시오.");
	}
	public void destroy() {
		System.out.println("작업이 종료되었습니다.");
	}
}
