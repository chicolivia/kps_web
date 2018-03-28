package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BitCoinDAO;
import model.domain.CoinPredBean;

/**
 * Servlet implementation class Tester
 */
@WebServlet("/Tester")
public class Tester extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ArrayList<CoinPredBean> bitCoinPred = new ArrayList<CoinPredBean>();
		
		BitCoinDAO.getBitCoinPredFromDB();
		bitCoinPred = BitCoinDAO.getBitCoinPredList();
		
		for(CoinPredBean cp : bitCoinPred) {
			System.out.println(cp);
		}
	}
}
