package controller.loginController;

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
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String id = request.getParameter("id");
		String pw= request.getParameter("pw");
		String returnURL = "";
		if(id != null) {
			try {
				MemberBean member = MemberDAO.selectMember(id);
				if (member != null) {
					if(member.getPw().equals(pw)) {
						if(id.equals("master")) {
							returnURL = "masterLoginView";
						}else {
							returnURL="memberLoginView";
						}
					}else {
						returnURL ="pwErrorView";
					}
				}else {
					returnURL="idErrorView";
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else {
			returnURL="wrongParameterCame";
		}
		response.sendRedirect(returnURL);
	}//service
}
