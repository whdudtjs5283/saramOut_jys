package org.kh.saramout.enterprise.model.vo;

import org.springframework.stereotype.Component;

@Component
public class EnterPrise implements java.io.Serializable{
	private static final long serialVersionUID = 516413328L;
	
	private int enterpriseno;
	private String bid;
	private String userpwd;	
	private String businessno;
	
	private String fulladdress;
	private String detailaddress;
	private String roadaddress1;
	private String roadaddress2;
	
	private String company;	
	private String username;
	private String bemail;	
	private int userphone;
	private int companyphone;
	private int report;
	private String writegrant;
	
	public EnterPrise() {}

	public EnterPrise(int enterpriseno, String bid, String userpwd, String businessno, String fulladdress,
			String detailaddress, String roadaddress1, String roadaddress2, String company, String username,
			String bemail, int userphone, int companyphone, int report, String writegrant) {
		super();
		this.enterpriseno = enterpriseno;
		this.bid = bid;
		this.userpwd = userpwd;
		this.businessno = businessno;
		this.fulladdress = fulladdress;
		this.detailaddress = detailaddress;
		this.roadaddress1 = roadaddress1;
		this.roadaddress2 = roadaddress2;
		this.company = company;
		this.username = username;
		this.bemail = bemail;
		this.userphone = userphone;
		this.companyphone = companyphone;
		this.report = report;
		this.writegrant = writegrant;
	}

	public int getEnterpriseno() {
		return enterpriseno;
	}

	public void setEnterpriseno(int enterpriseno) {
		this.enterpriseno = enterpriseno;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getBusinessno() {
		return businessno;
	}

	public void setBusinessno(String businessno) {
		this.businessno = businessno;
	}

	public String getFulladdress() {
		return fulladdress;
	}

	public void setFulladdress(String fulladdress) {
		this.fulladdress = fulladdress;
	}

	public String getDetailaddress() {
		return detailaddress;
	}

	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}

	public String getRoadaddress1() {
		return roadaddress1;
	}

	public void setRoadaddress1(String roadaddress1) {
		this.roadaddress1 = roadaddress1;
	}

	public String getRoadaddress2() {
		return roadaddress2;
	}

	public void setRoadaddress2(String roadaddress2) {
		this.roadaddress2 = roadaddress2;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBemail() {
		return bemail;
	}

	public void setBemail(String bemail) {
		this.bemail = bemail;
	}

	public int getUserphone() {
		return userphone;
	}

	public void setUserphone(int userphone) {
		this.userphone = userphone;
	}

	public int getCompanyphone() {
		return companyphone;
	}

	public void setCompanyphone(int companyphone) {
		this.companyphone = companyphone;
	}

	public int getReport() {
		return report;
	}

	public void setReport(int report) {
		this.report = report;
	}

	public String getWritegrant() {
		return writegrant;
	}

	public void setWritegrant(String writegrant) {
		this.writegrant = writegrant;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "EnterPrise [enterpriseno=" + enterpriseno + ", bid=" + bid + ", userpwd=" + userpwd + ", businessno="
				+ businessno + ", fulladdress=" + fulladdress + ", detailaddress=" + detailaddress + ", roadaddress1="
				+ roadaddress1 + ", roadaddress2=" + roadaddress2 + ", company=" + company + ", username=" + username
				+ ", bemail=" + bemail + ", userphone=" + userphone + ", companyphone=" + companyphone + ", report="
				+ report + ", writegrant=" + writegrant + "]";
	}

	
	
	
	
	
	
	

}
