package controller.loginController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.domain.MemberBean;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session= request.getSession(); 
		PrintWriter out = response.getWriter();
		String id = (String)request.getParameter("id");
		String pw= (String)request.getParameter("pw");
		String returnText = "";
		System.out.println(id);
		if(id != null) {
			try {
				MemberBean member = MemberDAO.selectMember(id);
				if (member != null) {
					if(member.getPw().equals(pw)) {
						
						if(id.equals("master")) {
							returnText = "master";
						}else {
							returnText="exist";
						}
					}else {
						returnText ="noPw";
					}
				}else {
					returnText="noId";
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else {
			returnText="wrongParam";
		}
		out.print(returnText);
		out.close();
	}//service
}
