package org.kh.saramout.apply.controller;

import java.util.ArrayList;
import java.util.Map;

import org.kh.saramout.apply.model.service.ApplyService;
import org.kh.saramout.apply.model.vo.Apply;
import org.kh.saramout.employment.model.service.EmploymentService;
import org.kh.saramout.employment.model.vo.Employment;
import org.kh.saramout.mscrape.model.service.MScrapeService;
import org.kh.saramout.resume.model.service.ResumeService;
import org.kh.saramout.resume.model.vo.Resume;
import org.kh.saramout.resumecheck.model.service.ResumeCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ApplyController {
   
   @Autowired
   private ApplyService applyService;
   
   @Autowired
	private EmploymentService employmentService;
   
   @Autowired
   private ResumeService resumeService;
   
   @Autowired
   private MScrapeService mScrapeService;
   
   @Autowired
   private ResumeCheckService resumeCheckService;
   
   @RequestMapping(value="apply.do", method=RequestMethod.POST)
   public ModelAndView apply(Apply apply, Resume resume, ModelAndView mv) {
      
      resume = resumeService.selectResume(apply.getApply_resume_no());
      
      //원래는 남자 여자인 경우 분리해서 if문으로 나눠야함, 일단 남자로만 함
      System.out.println("지원한 이력서의 성별 체크 : " + resume.getResume_usergender());
      
      System.out.println("apply.getApply_employment_no()" + apply.getApply_employment_no());
      
      String gender = resume.getResume_usergender();
      
      int recruit_num = apply.getApply_employment_no();
      //해당 공고 객체를 가져옴
      Employment employment = employmentService.selectEmployment(recruit_num);
      
      System.out.println("가져온 공고 출력 : " + employment.toString());
      System.out.println("지원서의 유저성별 출력 : " + gender);
      
      if (gender.equals("m")) {

      //남자 지원자 1 올리는 메소드
      employmentService.addMapply(employment); 
      
      }else if(gender.equals("f")) {
          
          //여자 지원자 1 올리는 메소드
          employmentService.addFapply(employment);
    	  
      }
      
      
      
      apply.setApply_resume_title(resume.getResume_title());
      apply.setApply_userid(resume.getResume_userid());
      apply.setApply_username(resume.getResume_username());
      apply.setApply_date(resume.getResume_apply_date());

      
      if(applyService.insertApply(apply) > 0) {
         mv.addObject("apply", apply);
         mv.setViewName("apply/applyComplete");
         return mv;
      } else {
         mv.setViewName("common/error");
         return mv;
      }
   }
   
   @RequestMapping("eApplyList.do")
   public ModelAndView moveEApplyList(ModelAndView mv, @RequestParam(name="bid") String bid) {
      ArrayList<Apply> eApplyList = applyService.selectList(bid);
      System.out.println("eApplyList : " + eApplyList);
      mv.addObject("eApplyList", eApplyList);
      mv.setViewName("apply/enterpriseApplyList");
      return mv;
      }
   
   //5월 24일추가
   

   @RequestMapping("moveMemberApplyList.do")
   public ModelAndView moveMemberApplyList(ModelAndView mv, Map<String, Object> parameters,
		   @RequestParam(name="userid") String apply_userid,
		   @RequestParam(name="page") int page) {
	   
	   	  int currentPage = 1;
	      if(page != 0) {
	    	  currentPage = page;
	      }
	      
	      int limit = 10;
	      int listCount = 0;
	      int pageLimit = 5;
	      listCount = applyService.selectApplyCnt(apply_userid);
	      
	      int maxPage = (int)((double)listCount / limit + 0.9);
	      int startPage = (((int)((double)currentPage / pageLimit +0.9))-1)  * pageLimit + 1; 
	      int endPage = startPage + pageLimit -1;
	      if(maxPage < endPage) {
	         endPage =maxPage;
	      }
	      
	      int startRow = (currentPage -1) * limit + 1;
	      int endRow = startRow + limit - 1;
	      parameters.put("startRow", startRow);
	      parameters.put("endRow", endRow);
	      parameters.put("apply_userid", apply_userid);
	      
	   	  ArrayList<Apply> mApplyList = applyService.selectMemberList(parameters);
	     
	   	  System.out.println("mAPplyList : " + mApplyList);
	   	  
	      int applyCnt = applyService.selectApplyCnt(apply_userid);
	     
	      String userid = apply_userid;
	      ArrayList<Resume> resumeList = resumeService.selectList(userid);
	      
	      String mscrape_userid = apply_userid;
	      int mScrapeCnt = mScrapeService.selectMScrapeCnt(mscrape_userid);

	      String rc_userid = apply_userid;
	      int checkCnt = resumeCheckService.selectCheckCnt(rc_userid);
	      
	    
	    
	      mv.addObject("currentPage", currentPage);
	      mv.addObject("pageLimit", pageLimit);
		  mv.addObject("maxPage", maxPage);
		  mv.addObject("startPage", startPage);
		  mv.addObject("endPage", endPage);	   
		  mv.addObject("listCount", listCount);
	      mv.addObject("checkCnt", checkCnt);
	      mv.addObject("mScrapeCnt", mScrapeCnt);
	      mv.addObject("applyCnt", applyCnt);
	      mv.addObject("resumeList", resumeList);
	      mv.addObject("mApplyList", mApplyList);
	      mv.setViewName("apply/memberApplyList");
	      return mv;
	      }
   
}











