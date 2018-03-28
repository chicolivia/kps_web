package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.ResourceBundle;

import model.domain.CoinPredBean;
import util.DBUtil;

public class BitCoinDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	public static ArrayList<CoinPredBean> bitCoinPredList = null;
	
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
}