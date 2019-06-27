package org.kh.saramout.mscrape.model.vo;

import org.springframework.stereotype.Component;

@Component
public class MScrape implements java.io.Serializable {

	private static final long serialVersionUID = 6125L;
	
	private int mscrape_no;
	private int mscrape_recruit_no;
	private String mscrape_recruit_bid;
	private String mscrape_recruit_title;
	private String mscrape_recruit_enddate;
	private String mscrape_company;
	private String mscrape_career;
	private String mscrape_education;
	private String mscrape_workarea;
	private String mscrape_workfield;
	private String mscrape_worktype;
	private int mscrape_like;
	private String mscrape_userid;
	
	public MScrape() {}

	public MScrape(int mscrape_no, int mscrape_recruit_no, String mscrape_recruit_bid, String mscrape_recruit_title,
			String mscrape_recruit_enddate, String mscrape_company, String mscrape_career, String mscrape_education,
			String mscrape_workarea, String mscrape_workfield, String mscrape_worktype, int mscrape_like,
			String mscrape_userid) {
		super();
		this.mscrape_no = mscrape_no;
		this.mscrape_recruit_no = mscrape_recruit_no;
		this.mscrape_recruit_bid = mscrape_recruit_bid;
		this.mscrape_recruit_title = mscrape_recruit_title;
		this.mscrape_recruit_enddate = mscrape_recruit_enddate;
		this.mscrape_company = mscrape_company;
		this.mscrape_career = mscrape_career;
		this.mscrape_education = mscrape_education;
		this.mscrape_workarea = mscrape_workarea;
		this.mscrape_workfield = mscrape_workfield;
		this.mscrape_worktype = mscrape_worktype;
		this.mscrape_like = mscrape_like;
		this.mscrape_userid = mscrape_userid;
	}

	public int getMscrape_no() {
		return mscrape_no;
	}

	public void setMscrape_no(int mscrape_no) {
		this.mscrape_no = mscrape_no;
	}

	public int getMscrape_recruit_no() {
		return mscrape_recruit_no;
	}

	public void setMscrape_recruit_no(int mscrape_recruit_no) {
		this.mscrape_recruit_no = mscrape_recruit_no;
	}

	public String getMscrape_recruit_bid() {
		return mscrape_recruit_bid;
	}

	public void setMscrape_recruit_bid(String mscrape_recruit_bid) {
		this.mscrape_recruit_bid = mscrape_recruit_bid;
	}

	public String getMscrape_recruit_title() {
		return mscrape_recruit_title;
	}

	public void setMscrape_recruit_title(String mscrape_recruit_title) {
		this.mscrape_recruit_title = mscrape_recruit_title;
	}

	public String getMscrape_recruit_enddate() {
		return mscrape_recruit_enddate;
	}

	public void setMscrape_recruit_enddate(String mscrape_recruit_enddate) {
		this.mscrape_recruit_enddate = mscrape_recruit_enddate;
	}

	public String getMscrape_company() {
		return mscrape_company;
	}

	public void setMscrape_company(String mscrape_company) {
		this.mscrape_company = mscrape_company;
	}

	public String getMscrape_career() {
		return mscrape_career;
	}

	public void setMscrape_career(String mscrape_career) {
		this.mscrape_career = mscrape_career;
	}

	public String getMscrape_education() {
		return mscrape_education;
	}

	public void setMscrape_education(String mscrape_education) {
		this.mscrape_education = mscrape_education;
	}

	public String getMscrape_workarea() {
		return mscrape_workarea;
	}

	public void setMscrape_workarea(String mscrape_workarea) {
		this.mscrape_workarea = mscrape_workarea;
	}

	public String getMscrape_workfield() {
		return mscrape_workfield;
	}

	public void setMscrape_workfield(String mscrape_workfield) {
		this.mscrape_workfield = mscrape_workfield;
	}

	public String getMscrape_worktype() {
		return mscrape_worktype;
	}

	public void setMscrape_worktype(String mscrape_worktype) {
		this.mscrape_worktype = mscrape_worktype;
	}

	public int getMscrape_like() {
		return mscrape_like;
	}

	public void setMscrape_like(int mscrape_like) {
		this.mscrape_like = mscrape_like;
	}

	public String getMscrape_userid() {
		return mscrape_userid;
	}

	public void setMscrape_userid(String mscrape_userid) {
		this.mscrape_userid = mscrape_userid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MScrape [mscrape_no=" + mscrape_no + ", mscrape_recruit_no=" + mscrape_recruit_no
				+ ", mscrape_recruit_bid=" + mscrape_recruit_bid + ", mscrape_recruit_title=" + mscrape_recruit_title
				+ ", mscrape_recruit_enddate=" + mscrape_recruit_enddate + ", mscrape_company=" + mscrape_company
				+ ", mscrape_career=" + mscrape_career + ", mscrape_education=" + mscrape_education
				+ ", mscrape_workarea=" + mscrape_workarea + ", mscrape_workfield=" + mscrape_workfield
				+ ", mscrape_worktype=" + mscrape_worktype + ", mscrape_like=" + mscrape_like + ", mscrape_userid="
				+ mscrape_userid + "]";
	}

}
