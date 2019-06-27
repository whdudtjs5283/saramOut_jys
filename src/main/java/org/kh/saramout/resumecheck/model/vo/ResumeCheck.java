package org.kh.saramout.resumecheck.model.vo;

import org.springframework.stereotype.Component;

@Component
public class ResumeCheck implements java.io.Serializable {
	private static final long serialVersionUID = 4002L;

	private int rc_no;
	private String rc_userid;
	private String rc_bid;
	private String rc_company;
	private int rc_recruitcnt;
	private String rc_open_date;
	private String rc_check;
	
	public ResumeCheck() {}

	public ResumeCheck(int rc_no, String rc_userid, String rc_bid, String rc_company, int rc_recruitcnt,
			String rc_open_date, String rc_check) {
		super();
		this.rc_no = rc_no;
		this.rc_userid = rc_userid;
		this.rc_bid = rc_bid;
		this.rc_company = rc_company;
		this.rc_recruitcnt = rc_recruitcnt;
		this.rc_open_date = rc_open_date;
		this.rc_check = rc_check;
	}

	public int getRc_no() {
		return rc_no;
	}

	public void setRc_no(int rc_no) {
		this.rc_no = rc_no;
	}

	public String getRc_userid() {
		return rc_userid;
	}

	public void setRc_userid(String rc_userid) {
		this.rc_userid = rc_userid;
	}

	public String getRc_bid() {
		return rc_bid;
	}

	public void setRc_bid(String rc_bid) {
		this.rc_bid = rc_bid;
	}

	public String getRc_company() {
		return rc_company;
	}

	public void setRc_company(String rc_company) {
		this.rc_company = rc_company;
	}

	public int getRc_recruitcnt() {
		return rc_recruitcnt;
	}

	public void setRc_recruitcnt(int rc_recruitcnt) {
		this.rc_recruitcnt = rc_recruitcnt;
	}

	public String getRc_open_date() {
		return rc_open_date;
	}

	public void setRc_open_date(String rc_open_date) {
		this.rc_open_date = rc_open_date;
	}

	public String getRc_check() {
		return rc_check;
	}

	public void setRc_check(String rc_check) {
		this.rc_check = rc_check;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ResumeCheck [rc_no=" + rc_no + ", rc_userid=" + rc_userid + ", rc_bid=" + rc_bid + ", rc_company="
				+ rc_company + ", rc_recruitcnt=" + rc_recruitcnt + ", rc_open_date=" + rc_open_date + ", rc_check="
				+ rc_check + "]";
	}

}
