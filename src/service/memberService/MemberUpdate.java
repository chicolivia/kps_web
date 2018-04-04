package service.memberService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.domain.MemberBean;
import model.domain.MemberInfoBean;

/**
 * Servlet implementation class MemberUpdate
 */
@WebServlet("/MemberUpdate")
public class MemberUpdate extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String pwSame = request.getParameter("pwSame");
		String alarmAgree = request.getParameter("alarmAgreeHidden");
		String riskType = request.getParameter("riskTypeHidden");
		String email = request.getParameter("emailHidden");
		String pw = request.getParameter("pw");
		MemberInfoBean memberInfo = (MemberInfoBean) request.getSession().getAttribute("memberInfo");
		MemberBean member = memberInfo.getMember();
		if(pw.equals("1")) {
			member.setPw(pw);
		}
		member.setAlarmAgree(Integer.parseInt(alarmAgree));
		member.setRiskNo(Integer.parseInt(riskType));
	}
}
