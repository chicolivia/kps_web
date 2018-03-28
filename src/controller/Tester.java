package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.domain.MemberBean;

/**
 * Servlet implementation class Tester
 */
@WebServlet("/Tester")
public class Tester extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tester() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
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
