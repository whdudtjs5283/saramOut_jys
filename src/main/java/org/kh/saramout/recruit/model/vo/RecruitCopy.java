package org.kh.saramout.recruit.model.vo;

import org.springframework.stereotype.Component;

@Component
public class RecruitCopy implements java.io.Serializable{
	
	private static final long serialVersionUID = 13228874477532L;
	
     private String joregistno;	//JOREGISTNO;
	 private int reregistno;
	 private String jobcodenm; //JOBCODENM ;
	 private String	acdmcrcmmncodese; //ACDMCRCMMNCODESE ;
	 private String	worktimenm; //WORKTIMENM; 
	 private String rceptmthnm; //RCEPTMTHNM; 
	 private String	worktmnm;  //WORKTMNM; 
	 private String	careercndnm; //CAREERCNDNM; 
	 private String	jofeinsrsbscrbnm; //JOFEINSRSBSCRBNM; 
	 private String	hopewage; //HOPEWAGE; 
	 private String	emplymstlecmmnmm; //EMPLYMSTLECMMNMM; 
	 private String	workpararbassadrescn; //WORKPARARBASSADRESCN; 
	 private String	bsnssumrycn; //BSNSSUMRYCN; 
	 private String	cmpnynm; //CMPNYNM; 
	 private String	dtycn; //DTYCN ;
	 private String	bassadrescn; 
	 			  //BASSADRESCN; 
	 private String	mngrphonno; //MNGRPHONNO; 
	 private String	rceptclosnm; //RCEPTCLOSNM; 
	 private int starttime; //STARTTIME;
     private int endtime; //ENDTIME;
	 

    /* vo 변수 다 소문자값으로하고 세터에 this.
     * 
     * 
     * */
     
     
	 public RecruitCopy() {}


	


	public RecruitCopy(String joregistno, int reregistno, String jobcodenm, String acdmcrcmmncodese, String worktimenm,
			String rceptmthnm, String worktmnm, String careercndnm, String jofeinsrsbscrbnm, String hopewage,
			String emplymstlecmmnmm, String workpararbassadrescn, String bsnssumrycn, String cmpnynm, String dtycn,
			String bassadrescn, String mngrphonno, String rceptclosnm, int starttime, int endtime) {
		super();
		this.joregistno = joregistno;
		this.reregistno = reregistno;
		this.jobcodenm = jobcodenm;
		this.acdmcrcmmncodese = acdmcrcmmncodese;
		this.worktimenm = worktimenm;
		this.rceptmthnm = rceptmthnm;
		this.worktmnm = worktmnm;
		this.careercndnm = careercndnm;
		this.jofeinsrsbscrbnm = jofeinsrsbscrbnm;
		this.hopewage = hopewage;
		this.emplymstlecmmnmm = emplymstlecmmnmm;
		this.workpararbassadrescn = workpararbassadrescn;
		this.bsnssumrycn = bsnssumrycn;
		this.cmpnynm = cmpnynm;
		this.dtycn = dtycn;
		this.bassadrescn = bassadrescn;
		this.mngrphonno = mngrphonno;
		this.rceptclosnm = rceptclosnm;
		this.starttime = starttime;
		this.endtime = endtime;
	}



		


	public String getJoregistno() {
		return joregistno;
	}





	public void setJoregistno(String joregistno) {
		this.joregistno = joregistno;
	}





	public int getReregistno() {
		return reregistno;
	}





	public void setReregistno(int reregistno) {
		this.reregistno = reregistno;
	}





	public String getJobcodenm() {
		return jobcodenm;
	}





	public void setJobcodenm(String jobcodenm) {
		this.jobcodenm = jobcodenm;
	}





	public String getAcdmcrcmmncodese() {
		return acdmcrcmmncodese;
	}





	public void setAcdmcrcmmncodese(String acdmcrcmmncodese) {
		this.acdmcrcmmncodese = acdmcrcmmncodese;
	}





	public String getWorktimenm() {
		return worktimenm;
	}





	public void setWorktimenm(String worktimenm) {
		this.worktimenm = worktimenm;
	}





	public String getRceptmthnm() {
		return rceptmthnm;
	}





	public void setRceptmthnm(String rceptmthnm) {
		this.rceptmthnm = rceptmthnm;
	}





	public String getWorktmnm() {
		return worktmnm;
	}





	public void setWorktmnm(String worktmnm) {
		this.worktmnm = worktmnm;
	}





	public String getCareercndnm() {
		return careercndnm;
	}





	public void setCareercndnm(String careercndnm) {
		this.careercndnm = careercndnm;
	}





	public String getJofeinsrsbscrbnm() {
		return jofeinsrsbscrbnm;
	}





	public void setJofeinsrsbscrbnm(String jofeinsrsbscrbnm) {
		this.jofeinsrsbscrbnm = jofeinsrsbscrbnm;
	}





	public String getHopewage() {
		return hopewage;
	}





	public void setHopewage(String hopewage) {
		this.hopewage = hopewage;
	}





	public String getEmplymstlecmmnmm() {
		return emplymstlecmmnmm;
	}





	public void setEmplymstlecmmnmm(String emplymstlecmmnmm) {
		this.emplymstlecmmnmm = emplymstlecmmnmm;
	}





	public String getWorkpararbassadrescn() {
		return workpararbassadrescn;
	}





	public void setWorkpararbassadrescn(String workpararbassadrescn) {
		this.workpararbassadrescn = workpararbassadrescn;
	}





	public String getBsnssumrycn() {
		return bsnssumrycn;
	}





	public void setBsnssumrycn(String bsnssumrycn) {
		this.bsnssumrycn = bsnssumrycn;
	}





	public String getCmpnynm() {
		return cmpnynm;
	}





	public void setCmpnynm(String cmpnynm) {
		this.cmpnynm = cmpnynm;
	}





	public String getDtycn() {
		return dtycn;
	}





	public void setDtycn(String dtycn) {
		this.dtycn = dtycn;
	}





	public String getBassadrescn() {
		return bassadrescn;
	}





	public void setBassadrescn(String bassadrescn) {
		this.bassadrescn = bassadrescn;
	}





	public String getMngrphonno() {
		return mngrphonno;
	}





	public void setMngrphonno(String mngrphonno) {
		this.mngrphonno = mngrphonno;
	}





	public String getRceptclosnm() {
		return rceptclosnm;
	}





	public void setRceptclosnm(String rceptclosnm) {
		this.rceptclosnm = rceptclosnm;
	}





	public int getStarttime() {
		return starttime;
	}





	public void setStarttime(int starttime) {
		this.starttime = starttime;
	}





	public int getEndtime() {
		return endtime;
	}





	public void setEndtime(int endtime) {
		this.endtime = endtime;
	}





	public static long getSerialversionuid() {
		return serialVersionUID;
	}





	@Override
	public String toString() {
		return "Recruit [joregistno=" + joregistno + ", reregistno=" + reregistno + ", jobcodenm=" + jobcodenm
				+ ", acdmcrcmmncodese=" + acdmcrcmmncodese + ", worktimenm=" + worktimenm + ", rceptmthnm=" + rceptmthnm
				+ ", worktmnm=" + worktmnm + ", careercndnm=" + careercndnm + ", jofeinsrsbscrbnm=" + jofeinsrsbscrbnm
				+ ", hopewage=" + hopewage + ", emplymstlecmmnmm=" + emplymstlecmmnmm + ", workpararbassadrescn="
				+ workpararbassadrescn + ", bsnssumrycn=" + bsnssumrycn + ", cmpnynm=" + cmpnynm + ", dtycn=" + dtycn
				+ ", bassadrescn=" + bassadrescn + ", mngrphonno=" + mngrphonno + ", rceptclosnm=" + rceptclosnm
				+ ", starttime=" + starttime + ", endtime=" + endtime + "]";
	}

	
	
	 

}
