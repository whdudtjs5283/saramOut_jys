package org.kh.saramout.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Member implements java.io.Serializable{
	private static final long serialVersionUID = 1111133L;
	
	//테이블의 컬럼명과 똑같이 이름 필드명 지정함
	private int memberno;
	private String userid;
	private String userpwd;
	private String username;
	private String gender;
	private String fulladdress;
	private String detailaddress;
	private String roadaddress1;
	private String roadaddress2;
	private String phone;
	private String email;
	private Date birthday;
	private Date enrolldate;
	private Date outdate;
	
	public Member() {}
	


	public Member(int memberno, String userid, String userpwd, String username, String gender, String fulladdress,
			String detailaddress, String roadaddress1, String roadaddress2, String phone, String email, Date birthday,
			Date enrolldate, Date outdate) {
		super();
		this.memberno = memberno;
		this.userid = userid;
		this.userpwd = userpwd;
		this.username = username;
		this.gender = gender;
		this.fulladdress = fulladdress;
		this.detailaddress = detailaddress;
		this.roadaddress1 = roadaddress1;
		this.roadaddress2 = roadaddress2;
		this.phone = phone;
		this.email = email;
		this.birthday = birthday;
		this.enrolldate = enrolldate;
		this.outdate = outdate;
	}


	
	

	public int getMemberno() {
		return memberno;
	}



	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}



	public String getUserid() {
		return userid;
	}



	public void setUserid(String userid) {
		this.userid = userid;
	}



	public String getUserpwd() {
		return userpwd;
	}



	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
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



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Date getBirthday() {
		return birthday;
	}



	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}



	public Date getEnrolldate() {
		return enrolldate;
	}



	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}



	public Date getOutdate() {
		return outdate;
	}



	public void setOutdate(Date outdate) {
		this.outdate = outdate;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		
		return this.memberno+ ", " +this.userid+ ", " + this.userpwd
				+ ", " +this.username+ ", " + this.gender+ ", " + this.fulladdress
				+ ", " + this.detailaddress+ ", " + this.roadaddress1
				+ this.roadaddress2 +
				this.phone+ ", " +this.email+ ", " +
				this.birthday+ ", " +this.enrolldate+ ", " +this.outdate;
	
	}
	
	
	
	

}
