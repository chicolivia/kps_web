package model.domain;

public class AlarmBean {
	private int coinNumber;
	private int type;
	private float percent;

	public AlarmBean() {}
	public AlarmBean(int coinNumber, int type, float percent) {
		super();
		this.coinNumber = coinNumber;
		this.type = type;
		this.percent = percent;
	}
	public int getCoinNumber() {
		return coinNumber;
	}
	public void setCoinNumber(int coinNumber) {
		this.coinNumber = coinNumber;
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
		return "AlarmBean [coinNumber=" + coinNumber + ", type=" + type + ", percent=" + percent + "]";
	}
}
