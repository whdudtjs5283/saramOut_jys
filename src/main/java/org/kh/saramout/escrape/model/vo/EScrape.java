package org.kh.saramout.escrape.model.vo;

import org.springframework.stereotype.Component;

@Component
public class EScrape implements java.io.Serializable{
	private static final long serialVersionUID = 6124L;

	private int escrape_no;
	private String escrape_bid;
	private int escrape_resume_no;
	private String escrape_resume_title;
	private String escrape_username;
	private String escrape_userbirthday;
	private String escrape_hope_salary;
	private String escrape_career;
	private String escrape_school;
	private String escrape_schoolclass;
	private String escrape_graduate_yn;
	private int escrape_like;
	
	public EScrape() {}

	public EScrape(int escrape_no, String escrape_bid, int escrape_resume_no, String escrape_resume_title,
			String escrape_username, String escrape_userbirthday, String escrape_hope_salary, String escrape_career,
			String escrape_school, String escrape_schoolclass, String escrape_graduate_yn, int escrape_like) {
		super();
		this.escrape_no = escrape_no;
		this.escrape_bid = escrape_bid;
		this.escrape_resume_no = escrape_resume_no;
		this.escrape_resume_title = escrape_resume_title;
		this.escrape_username = escrape_username;
		this.escrape_userbirthday = escrape_userbirthday;
		this.escrape_hope_salary = escrape_hope_salary;
		this.escrape_career = escrape_career;
		this.escrape_school = escrape_school;
		this.escrape_schoolclass = escrape_schoolclass;
		this.escrape_graduate_yn = escrape_graduate_yn;
		this.escrape_like = escrape_like;
	}

	public int getEscrape_no() {
		return escrape_no;
	}

	public void setEscrape_no(int escrape_no) {
		this.escrape_no = escrape_no;
	}

	public String getEscrape_bid() {
		return escrape_bid;
	}

	public void setEscrape_bid(String escrape_bid) {
		this.escrape_bid = escrape_bid;
	}

	public int getEscrape_resume_no() {
		return escrape_resume_no;
	}

	public void setEscrape_resume_no(int escrape_resume_no) {
		this.escrape_resume_no = escrape_resume_no;
	}

	public String getEscrape_resume_title() {
		return escrape_resume_title;
	}

	public void setEscrape_resume_title(String escrape_resume_title) {
		this.escrape_resume_title = escrape_resume_title;
	}

	public String getEscrape_username() {
		return escrape_username;
	}

	public void setEscrape_username(String escrape_username) {
		this.escrape_username = escrape_username;
	}

	public String getEscrape_userbirthday() {
		return escrape_userbirthday;
	}

	public void setEscrape_userbirthday(String escrape_userbirthday) {
		this.escrape_userbirthday = escrape_userbirthday;
	}

	public String getEscrape_hope_salary() {
		return escrape_hope_salary;
	}

	public void setEscrape_hope_salary(String escrape_hope_salary) {
		this.escrape_hope_salary = escrape_hope_salary;
	}

	public String getEscrape_career() {
		return escrape_career;
	}

	public void setEscrape_career(String escrape_career) {
		this.escrape_career = escrape_career;
	}

	public String getEscrape_school() {
		return escrape_school;
	}

	public void setEscrape_school(String escrape_school) {
		this.escrape_school = escrape_school;
	}

	public String getEscrape_schoolclass() {
		return escrape_schoolclass;
	}

	public void setEscrape_schoolclass(String escrape_schoolclass) {
		this.escrape_schoolclass = escrape_schoolclass;
	}

	public String getEscrape_graduate_yn() {
		return escrape_graduate_yn;
	}

	public void setEscrape_graduate_yn(String escrape_graduate_yn) {
		this.escrape_graduate_yn = escrape_graduate_yn;
	}

	public int getEscrape_like() {
		return escrape_like;
	}

	public void setEscrape_like(int escrape_like) {
		this.escrape_like = escrape_like;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Escrape [escrape_no=" + escrape_no + ", escrape_bid=" + escrape_bid + ", escrape_resume_no="
				+ escrape_resume_no + ", escrape_resume_title=" + escrape_resume_title + ", escrape_username="
				+ escrape_username + ", escrape_userbirthday=" + escrape_userbirthday + ", escrape_hope_salary="
				+ escrape_hope_salary + ", escrape_career=" + escrape_career + ", escrape_school=" + escrape_school
				+ ", escrape_schoolclass=" + escrape_schoolclass + ", escrape_graduate_yn=" + escrape_graduate_yn
				+ ", escrape_like=" + escrape_like + "]";
	}


}
