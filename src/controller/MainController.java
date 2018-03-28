package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.domain.MemberBean;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = (String) request.getParameter("id");
		String pw = (String) request.getParameter("pw");
		int risk = Integer.parseInt((String)request.getParameter("risk"));
		int agree = Integer.parseInt((String)request.getParameter("agree"));
		System.out.println(id+pw+risk+agree);
		boolean rst = false;
		try {
			rst = MemberDAO.addMember(new MemberBean(id,pw,risk,agree));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(rst);
	}
}
