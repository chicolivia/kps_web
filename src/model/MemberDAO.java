package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.domain.MemberBean;
import model.domain.MemberInfoBean;
import util.DBUtil;

public class MemberDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static boolean addMember(MemberBean member) throws SQLException{
		boolean result = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("addMember"));
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setInt(3, member.getAlarmAgree());
			pstmt.setInt(4, member.getRiskType());
			int addResult = pstmt.executeUpdate();
			if(addResult == 1) {
				result = true;
			}
		}finally {
			DBUtil.close(con, pstmt);
		}
		return result;		
	}
	
	public static boolean updateMember() {
		boolean result = true;
		
		return result;	
	}
	
	public static boolean deleteMember(String memberNo) {
		boolean result = true;
		
		
		
		return result;	
	}
	
	public static MemberBean selectMember(String memberNo) {
		MemberBean member = new MemberBean();
		
		return member;
	}
	
	public static ArrayList<MemberInfoBean> selectAll() throws SQLException{
		ArrayList<MemberInfoBean> memberList = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			con = DBUtil.getConnection();
			
		}finally{
			DBUtil.close(con, pstmt, rset);
		}
		return memberList;
	}
}