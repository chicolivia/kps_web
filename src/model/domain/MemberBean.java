package model.domain;

public class MemberBean {
	private String id;
	private String pw;
	private int riskNo;
	private int alarmAgree;
	
	public MemberBean() {}
	public MemberBean(String id, String pw, int riskNumber, int alarmAgree) {
		super();
		this.id = id;
		this.pw = pw;
		this.riskNo = riskNumber;
		this.alarmAgree = alarmAgree;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public int getRiskNo() {
		return riskNo;
	}
	public void setRiskNo(int riskNo) {
		this.riskNo = riskNo;
	}
	public int getAlarmAgree() {
		return alarmAgree;
	}
	public void setAlarmAgree(int alarmAgree) {
		this.alarmAgree = alarmAgree;
	}

	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", pw=" + pw + ", riskNo=" + riskNo + ", alarmAgree=" + alarmAgree + "]";
	}
}