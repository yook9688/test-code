package webShop;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class Servlet2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("일해라 일");
	}

	@Override
	public void destroy() {
		System.out.println("작업끝 퇴근");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("출근했으니 일할준비");
	}

}
