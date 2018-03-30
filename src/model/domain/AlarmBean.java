package model.domain;

public class AlarmBean {
	private int alarmNo;
	private int coinNo;
	private int type;
	private float percent;

	public AlarmBean() {}
	public AlarmBean(int alramNo, int coinNumber, float percent, int type) {
		super();
		this.alarmNo = alramNo;
		this.coinNo = coinNumber;
		this.type = type;
		this.percent = percent;
	}
	public AlarmBean(int coinNumber, float percent, int type) {
		super();
		this.alarmNo = 0;
		this.coinNo = coinNumber;
		this.type = type;
		this.percent = percent;
	}
	
	public int getAlarmNo() {
		return alarmNo;
	}
	public void setAlarmNo(int alarmNo) {
		this.alarmNo = alarmNo;
	}
	public int getCoinNo() {
		return coinNo;
	}
	public void setCoinNo(int coinNo) {
		this.coinNo = coinNo;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public float getPercent() {
		return percent;
	}
	public void setPercent(float percent) {
		this.percent = percent;
	}
	@Override
	public String toString() {
		return "AlarmBean [alarmNo=" + alarmNo + ", coinNo=" + coinNo + ", type=" + type + ", percent=" + percent + "]";
	}
}
