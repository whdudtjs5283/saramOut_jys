package org.kh.saramout.apply.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Apply implements java.io.Serializable{

   private static final long serialVersionUID = 6123L;
   
   private int apply_no;
   private int apply_employment_no;
   private String apply_bid;
   private String apply_company;
   private int apply_resume_no;
   private String apply_resume_title;
   private String apply_date;
   private String apply_username;
   private String apply_userid;
   private int apply_open_yn;
   
   public Apply(int apply_no, int apply_employment_no, String apply_bid, String apply_company, int apply_resume_no,
         String apply_resume_title, String apply_date, String apply_username, String apply_userid,
         int apply_open_yn) {
      super();
      this.apply_no = apply_no;
      this.apply_employment_no = apply_employment_no;
      this.apply_bid = apply_bid;
      this.apply_company = apply_company;
      this.apply_resume_no = apply_resume_no;
      this.apply_resume_title = apply_resume_title;
      this.apply_date = apply_date;
      this.apply_username = apply_username;
      this.apply_userid = apply_userid;
      this.apply_open_yn = apply_open_yn;
   }

   public Apply() {}

   public int getApply_no() {
      return apply_no;
   }

   public void setApply_no(int apply_no) {
      this.apply_no = apply_no;
   }

   public int getApply_employment_no() {
      return apply_employment_no;
   }

   public void setApply_employment_no(int apply_employment_no) {
      this.apply_employment_no = apply_employment_no;
   }

   public String getApply_bid() {
      return apply_bid;
   }

   public void setApply_bid(String apply_bid) {
      this.apply_bid = apply_bid;
   }

   public String getApply_company() {
      return apply_company;
   }

   public void setApply_company(String apply_company) {
      this.apply_company = apply_company;
   }

   public int getApply_resume_no() {
      return apply_resume_no;
   }

   public void setApply_resume_no(int apply_resume_no) {
      this.apply_resume_no = apply_resume_no;
   }

   public String getApply_resume_title() {
      return apply_resume_title;
   }

   public void setApply_resume_title(String apply_resume_title) {
      this.apply_resume_title = apply_resume_title;
   }

   public String getApply_date() {
      return apply_date;
   }

   public void setApply_date(String apply_date) {
      this.apply_date = apply_date;
   }

   public String getApply_username() {
      return apply_username;
   }

   public void setApply_username(String apply_username) {
      this.apply_username = apply_username;
   }

   public String getApply_userid() {
      return apply_userid;
   }

   public void setApply_userid(String apply_userid) {
      this.apply_userid = apply_userid;
   }

   public int getApply_open_yn() {
      return apply_open_yn;
   }

   public void setApply_open_yn(int apply_open_yn) {
      this.apply_open_yn = apply_open_yn;
   }

   @Override
   public String toString() {
      return "Apply [apply_no=" + apply_no + ", apply_employment_no=" + apply_employment_no + ", apply_bid="
            + apply_bid + ", apply_company=" + apply_company + ", apply_resume_no=" + apply_resume_no
            + ", apply_resume_title=" + apply_resume_title + ", apply_date=" + apply_date + ", apply_username="
            + apply_username + ", apply_userid=" + apply_userid + ", apply_open_yn=" + apply_open_yn + "]";
   }
   
}