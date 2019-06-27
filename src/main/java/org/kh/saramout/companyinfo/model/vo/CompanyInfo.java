package org.kh.saramout.companyinfo.model.vo;

import org.springframework.stereotype.Component;

@Component
public class CompanyInfo implements java.io.Serializable {

	private static final long serialVersionUID = 95L;

	private String bid;
	private String image;
	private String company_type;
	private int sales;
	private String represent;
	private int employees;
	private String establish;
	private String homepage;
	private String renameimage;
	public CompanyInfo() {
	}
	public CompanyInfo(String bid, String image, String company_type, int sales, String represent, int employees,
			String establish, String homepage, String renameimage) {
		super();
		this.bid = bid;
		this.image = image;
		this.company_type = company_type;
		this.sales = sales;
		this.represent = represent;
		this.employees = employees;
		this.establish = establish;
		this.homepage = homepage;
		this.renameimage = renameimage;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCompany_type() {
		return company_type;
	}
	public void setCompany_type(String company_type) {
		this.company_type = company_type;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public String getRepresent() {
		return represent;
	}
	public void setRepresent(String represent) {
		this.represent = represent;
	}
	public int getEmployees() {
		return employees;
	}
	public void setEmployees(int employees) {
		this.employees = employees;
	}
	public String getEstablish() {
		return establish;
	}
	public void setEstablish(String establish) {
		this.establish = establish;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getRenameimage() {
		return renameimage;
	}
	public void setRenameimage(String renameimage) {
		this.renameimage = renameimage;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "CompanyInfo [bid=" + bid + ", image=" + image + ", company_type=" + company_type + ", sales=" + sales
				+ ", represent=" + represent + ", employees=" + employees + ", establish=" + establish + ", homepage="
				+ homepage + ", renameimage=" + renameimage + "]";
	}

	

}
