package org.kh.saramout.employment.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Employment implements java.io.Serializable{
	private static final long serialVersionUID = 111122L;

	private int recruit_num;
	private String recruit_title;
	private String work_field;
	private String work_type;
	private String work_area;
	private String salary;
	private int hire_personnel;
	private String startdate;
	private String enddate;
	private String education;
	private String career;
	private String prefer;
	private String benefits;
	private String work_detail;
	private String bid;
	private int count;
	private int average;
	private int mapply;
	private int fapply;

	public Employment() {}

	public Employment(int recruit_num, String recruit_title, String work_field, String work_type, String work_area,
			String salary, int hire_personnel, String startdate, String enddate, String education, String career,
			String prefer, String benefits, String work_detail, String bid, int count, int average, int mapply,
			int fapply) {
		super();
		this.recruit_num = recruit_num;
		this.recruit_title = recruit_title;
		this.work_field = work_field;
		this.work_type = work_type;
		this.work_area = work_area;
		this.salary = salary;
		this.hire_personnel = hire_personnel;
		this.startdate = startdate;
		this.enddate = enddate;
		this.education = education;
		this.career = career;
		this.prefer = prefer;
		this.benefits = benefits;
		this.work_detail = work_detail;
		this.bid = bid;
		this.count = count;
		this.average = average;
		this.mapply = mapply;
		this.fapply = fapply;
	}

	public int getRecruit_num() {
		return recruit_num;
	}

	public void setRecruit_num(int recruit_num) {
		this.recruit_num = recruit_num;
	}

	public String getRecruit_title() {
		return recruit_title;
	}

	public void setRecruit_title(String recruit_title) {
		this.recruit_title = recruit_title;
	}

	public String getWork_field() {
		return work_field;
	}

	public void setWork_field(String work_field) {
		this.work_field = work_field;
	}

	public String getWork_type() {
		return work_type;
	}

	public void setWork_type(String work_type) {
		this.work_type = work_type;
	}

	public String getWork_area() {
		return work_area;
	}

	public void setWork_area(String work_area) {
		this.work_area = work_area;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public int getHire_personnel() {
		return hire_personnel;
	}

	public void setHire_personnel(int hire_personnel) {
		this.hire_personnel = hire_personnel;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getPrefer() {
		return prefer;
	}

	public void setPrefer(String prefer) {
		this.prefer = prefer;
	}

	public String getBenefits() {
		return benefits;
	}

	public void setBenefits(String benefits) {
		this.benefits = benefits;
	}

	public String getWork_detail() {
		return work_detail;
	}

	public void setWork_detail(String work_detail) {
		this.work_detail = work_detail;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getAverage() {
		return average;
	}

	public void setAverage(int average) {
		this.average = average;
	}

	public int getMapply() {
		return mapply;
	}

	public void setMapply(int mapply) {
		this.mapply = mapply;
	}

	public int getFapply() {
		return fapply;
	}

	public void setFapply(int fapply) {
		this.fapply = fapply;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Employment [recruit_num=" + recruit_num + ", recruit_title=" + recruit_title + ", work_field="
				+ work_field + ", work_type=" + work_type + ", work_area=" + work_area + ", salary=" + salary
				+ ", hire_personnel=" + hire_personnel + ", startdate=" + startdate + ", enddate=" + enddate
				+ ", education=" + education + ", career=" + career + ", prefer=" + prefer + ", benefits=" + benefits
				+ ", work_detail=" + work_detail + ", bid=" + bid + ", count=" + count + ", average=" + average
				+ ", mapply=" + mapply + ", fapply=" + fapply + "]";
	}
	
	
	
	

	
	
	
	
	
}







