package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.domain.CoinPredBean;
import util.DBUtil;

public class BitCoinDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	public static ArrayList<CoinPredBean> bitCoinPredList = null;
	
	static {
		getBitCoinPredFromDB();
	}
	public static void getBitCoinPredFromDB() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		bitCoinPredList = new ArrayList<>();
			
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("selectAllBitPred"));
			rset = pstmt.executeQuery();
			while(rset.next()) {
				bitCoinPredList.add(
						new CoinPredBean(rset.getInt(1),rset.getFloat(2)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
	}
	
	public static  ArrayList<CoinPredBean> getBitCoinPredList(){
		return bitCoinPredList;
	}
	
	public static String getCoinPredJSON() {
		BitCoinDAO.getBitCoinPredFromDB();
		ArrayList<CoinPredBean> coinList = BitCoinDAO.getBitCoinPredList(); 
		String resultString ="[";
		for(CoinPredBean coin: coinList) {
			resultString += "["+coin.getTimeStamp()*1000L+","+
					String.format("%.8f", coin.getPriminum()*100)+"],";
		}
		resultString = resultString.substring(0, resultString.length()-1);
		resultString +="]";
		System.out.println(resultString);
		return resultString;
	}
}