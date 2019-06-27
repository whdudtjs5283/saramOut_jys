package org.kh.saramout.resume.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Resume  implements java.io.Serializable {
   private static final long serialVersionUID = 2004L;
   
   private int resume_no;
   private String resume_userid;
   private String resume_username;
   private String resume_userbirthday;
   private String resume_usergender;
   private String resume_useremail;
   private String resume_userphone;
   private String resume_userfulladdress;
   private String resume_modification_date;
    private String resume_apply_date; 
    private String resume_title;
   private String resume_opic;
   private String resume_rpic;
   private String resume_school_classification;
   private String resume_school;
   private String resume_major;
   private String resume_entrance_date;
   private String resume_graduate_date;
   private String resume_graduate_yn;
   private String resume_company;
   private String resume_department;
   private String resume_grade;
   private String resume_hire_date;
   private String resume_retirement_date;
   private String resume_work_contents;
   private String resume_license;
   private String resume_publication_place;
   private String resume_acquisition_date;
   private String resume_employment_form;
   private String resume_hope_salary;
   private String resume_introduce_document;
   private String resume_open_yn;
   
   public Resume() {}

   public int getResume_no() {
      return resume_no;
   }

   public void setResume_no(int resume_no) {
      this.resume_no = resume_no;
   }

   public String getResume_userid() {
      return resume_userid;
   }

   public void setResume_userid(String resume_userid) {
      this.resume_userid = resume_userid;
   }

   public String getResume_username() {
      return resume_username;
   }

   public void setResume_username(String resume_username) {
      this.resume_username = resume_username;
   }

   public String getResume_userbirthday() {
      return resume_userbirthday;
   }

   public void setResume_userbirthday(String resume_userbirthday) {
      this.resume_userbirthday = resume_userbirthday;
   }

   public String getResume_usergender() {
      return resume_usergender;
   }

   public void setResume_usergender(String resume_usergender) {
      this.resume_usergender = resume_usergender;
   }

   public String getResume_useremail() {
      return resume_useremail;
   }

   public void setResume_useremail(String resume_useremail) {
      this.resume_useremail = resume_useremail;
   }

   public String getResume_userphone() {
      return resume_userphone;
   }

   public void setResume_userphone(String resume_userphone) {
      this.resume_userphone = resume_userphone;
   }

   public String getResume_userfulladdress() {
      return resume_userfulladdress;
   }

   public void setResume_userfulladdress(String resume_userfulladdress) {
      this.resume_userfulladdress = resume_userfulladdress;
   }

   public String getResume_modification_date() {
      return resume_modification_date;
   }

   public void setResume_modification_date(String resume_modification_date) {
      this.resume_modification_date = resume_modification_date;
   }

   public String getResume_apply_date() {
      return resume_apply_date;
   }

   public void setResume_apply_date(String resume_apply_date) {
      this.resume_apply_date = resume_apply_date;
   }

   public String getResume_title() {
      return resume_title;
   }

   public void setResume_title(String resume_title) {
      this.resume_title = resume_title;
   }

   public String getResume_opic() {
      return resume_opic;
   }

   public void setResume_opic(String resume_opic) {
      this.resume_opic = resume_opic;
   }

   public String getResume_rpic() {
      return resume_rpic;
   }

   public void setResume_rpic(String resume_rpic) {
      this.resume_rpic = resume_rpic;
   }

   public String getResume_school_classification() {
      return resume_school_classification;
   }

   public void setResume_school_classification(String resume_school_classification) {
      this.resume_school_classification = resume_school_classification;
   }

   public String getResume_school() {
      return resume_school;
   }

   public void setResume_school(String resume_school) {
      this.resume_school = resume_school;
   }

   public String getResume_major() {
      return resume_major;
   }

   public void setResume_major(String resume_major) {
      this.resume_major = resume_major;
   }

   public String getResume_entrance_date() {
      return resume_entrance_date;
   }

   public void setResume_entrance_date(String resume_entrance_date) {
      this.resume_entrance_date = resume_entrance_date;
   }

   public String getResume_graduate_date() {
      return resume_graduate_date;
   }

   public void setResume_graduate_date(String resume_graduate_date) {
      this.resume_graduate_date = resume_graduate_date;
   }

   public String getResume_graduate_yn() {
      return resume_graduate_yn;
   }

   public void setResume_graduate_yn(String resume_graduate_yn) {
      this.resume_graduate_yn = resume_graduate_yn;
   }

   public String getResume_company() {
      return resume_company;
   }

   public void setResume_company(String resume_company) {
      this.resume_company = resume_company;
   }

   public String getResume_department() {
      return resume_department;
   }

   public void setResume_department(String resume_department) {
      this.resume_department = resume_department;
   }

   public String getResume_grade() {
      return resume_grade;
   }

   public void setResume_grade(String resume_grade) {
      this.resume_grade = resume_grade;
   }

   public String getResume_hire_date() {
      return resume_hire_date;
   }

   public void setResume_hire_date(String resume_hire_date) {
      this.resume_hire_date = resume_hire_date;
   }

   public String getResume_retirement_date() {
      return resume_retirement_date;
   }

   public void setResume_retirement_date(String resume_retirement_date) {
      this.resume_retirement_date = resume_retirement_date;
   }

   public String getResume_work_contents() {
      return resume_work_contents;
   }

   public void setResume_work_contents(String resume_work_contents) {
      this.resume_work_contents = resume_work_contents;
   }

   public String getResume_license() {
      return resume_license;
   }

   public void setResume_license(String resume_license) {
      this.resume_license = resume_license;
   }

   public String getResume_publication_place() {
      return resume_publication_place;
   }

   public void setResume_publication_place(String resume_publication_place) {
      this.resume_publication_place = resume_publication_place;
   }

   public String getResume_acquisition_date() {
      return resume_acquisition_date;
   }

   public void setResume_acquisition_date(String resume_acquisition_date) {
      this.resume_acquisition_date = resume_acquisition_date;
   }

   public String getResume_employment_form() {
      return resume_employment_form;
   }

   public void setResume_employment_form(String resume_employment_form) {
      this.resume_employment_form = resume_employment_form;
   }

   public String getResume_hope_salary() {
      return resume_hope_salary;
   }

   public void setResume_hope_salary(String resume_hope_salary) {
      this.resume_hope_salary = resume_hope_salary;
   }

   public String getResume_introduce_document() {
      return resume_introduce_document;
   }

   public void setResume_introduce_document(String resume_introduce_document) {
      this.resume_introduce_document = resume_introduce_document;
   }

   public String getResume_open_yn() {
      return resume_open_yn;
   }

   public void setResume_open_yn(String resume_open_yn) {
      this.resume_open_yn = resume_open_yn;
   }

   public static long getSerialversionuid() {
      return serialVersionUID;
   }

   @Override
   public String toString() {
      return "Resume [resume_no=" + resume_no + ", resume_userid=" + resume_userid + ", resume_username="
            + resume_username + ", resume_userbirthday=" + resume_userbirthday + ", resume_usergender="
            + resume_usergender + ", resume_useremail=" + resume_useremail + ", resume_userphone="
            + resume_userphone + ", resume_userfulladdress=" + resume_userfulladdress
            + ", resume_modification_date=" + resume_modification_date + ", resume_apply_date=" + resume_apply_date
            + ", resume_title=" + resume_title + ", resume_opic=" + resume_opic + ", resume_rpic=" + resume_rpic
            + ", resume_school_classification=" + resume_school_classification + ", resume_school=" + resume_school
            + ", resume_major=" + resume_major + ", resume_entrance_date=" + resume_entrance_date
            + ", resume_graduate_date=" + resume_graduate_date + ", resume_graduate_yn=" + resume_graduate_yn
            + ", resume_company=" + resume_company + ", resume_department=" + resume_department + ", resume_grade="
            + resume_grade + ", resume_hire_date=" + resume_hire_date + ", resume_retirement_date="
            + resume_retirement_date + ", resume_work_contents=" + resume_work_contents + ", resume_license="
            + resume_license + ", resume_publication_place=" + resume_publication_place
            + ", resume_acquisition_date=" + resume_acquisition_date + ", resume_employment_form="
            + resume_employment_form + ", resume_hope_salary=" + resume_hope_salary + ", resume_introduce_document="
            + resume_introduce_document + ", resume_open_yn=" + resume_open_yn + "]";
   }
}