package WebShop;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class Servlet2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("���ض� ��");
	}

	@Override
	public void destroy() {
		System.out.println("�۾��� ���");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("��������� �����غ�");
	}

}
