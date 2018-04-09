package service.currency;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PremiumDAO;
import model.domain.PremiumMarketBean;

/**
 * Servlet implementation class GetKPJson
 */
@WebServlet("/GetKPJson")
public class GetKPJson extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		ArrayList<PremiumMarketBean> preList= PremiumDAO.getPreList();
		ArrayList<PremiumMarketBean> sortedList = PremiumDAO.getSortedPreList();
		
	}
}
