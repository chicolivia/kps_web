package model.domain;

public class ContactBean {
	private int contactType;
	private String address;
	private int certification;
	
	public ContactBean(){}
	public ContactBean(int contactType, String address, int certification) {
		super();
		this.contactType = contactType;
		this.address = address;
		this.certification = certification;
	}
	public int getContactType() {
		return contactType;
	}
	public void setContactType(int contactType) {
		this.contactType = contactType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getCertification() {
		return certification;
	}
	public void setCertification(int certification) {
		this.certification = certification;
	}
	@Override
	public String toString() {
		return "ContactBean [contactType=" + contactType + ", address=" + address + ", certification=" + certification
				+ "]";
	}
}