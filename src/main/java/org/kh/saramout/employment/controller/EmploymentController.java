package org.kh.saramout.employment.controller;

import java.util.ArrayList;

import org.kh.saramout.companyinfo.model.service.CompanyInfoService;
import org.kh.saramout.companyinfo.model.vo.CompanyInfo;
import org.kh.saramout.employment.model.service.EmploymentService;
import org.kh.saramout.employment.model.vo.Employment;
import org.kh.saramout.mscrape.model.service.MScrapeService;
import org.kh.saramout.mscrape.model.vo.MScrape;
import org.kh.saramout.resume.model.service.ResumeService;
import org.kh.saramout.resume.model.vo.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmploymentController {
	//EmploymentService DI
	@Autowired
	private EmploymentService employmentService;
	
	@Autowired
	private CompanyInfoService companyInfoService;
	
	@Autowired
	private ResumeService resumeSerivce;
	
	@Autowired
	private MScrapeService mScrapeService;
	
	@RequestMapping(value = "writeEmployment.do", method = RequestMethod.GET)
	public String addListing(ModelAndView mv, @RequestParam(name="bid") String bid) {
		
		System.out.println("bid출력 : " + bid);
		return "common/add-listing";
	}
	
	@RequestMapping(value = "eupdate.do", method = RequestMethod.GET)
	public String eupdate() {
		return "common/eupdate";
	}

	@RequestMapping(value="add-listing.do", method= RequestMethod.POST)
	public String insertEmployment(Employment employment, Model model, @RequestParam(name="bid") String bid) {
				
				if(employmentService.insertEmployment(employment) > 0)
					return "home2";
				else {
					model.addAttribute("message", "채용 공고 등록 실패!");
					return "common/error";
	}
	}
	
	
	//bid값도 가져와야되서 내가 추가함
	//취합전 내 코드
	/*@RequestMapping("edetail.do")
	   public ModelAndView selectEmployment(ModelAndView mv, 
			   @RequestParam(name="recruit_num")int recruit_num
		
			   ) {
		
	      Employment employment = employmentService.selectEmployment(recruit_num);
	      
	      String bid = employment.getBid();
	      System.out.println("bid출력 : " + bid);
	      //employment.getBid();
	      CompanyInfo companyInfo = companyInfoService.selectCompanyInfo(bid);
	      
	      mv.addObject("companyInfo", companyInfo);
	      
	     System.out.println("회사정보 getbid출력되는지 : " + companyInfo.toString());
	      
	      mv.addObject("employment", employment);
	      mv.setViewName("common/employmentDetail");
	      return mv;
	   }*/
	
	@RequestMapping("edetail.do")
    public ModelAndView selectEmployment(ModelAndView mv, MScrape mScrape,
          @RequestParam(name="recruit_num")int recruit_num, 
          @RequestParam(name="bid")String bid,
          @RequestParam(name="userid")String mScrape_userid) {
       Employment employment = employmentService.selectEmployment(recruit_num);
       CompanyInfo companyInfo = companyInfoService.selectCompanyInfo(bid);
       
       mScrape.setMscrape_userid(mScrape_userid);
       mScrape.setMscrape_recruit_no(recruit_num);
       mScrape = mScrapeService.selectScrape(mScrape);
       System.out.println("mScrape : " + mScrape);
       
       mv.addObject("mScrape", mScrape);
       mv.addObject("companyInfo", companyInfo);
       mv.addObject("employment", employment);
       mv.setViewName("common/employmentDetail");
       return mv;
    }
	
	
	@RequestMapping(value="eupdate.do", method=RequestMethod.POST)
	public String updateEmployment(Employment employment, Model model) {
		
		int result = employmentService.updateEmployment(employment);
			if(result > 0)
				return "home";
			else {
				model.addAttribute("message", "채용 공고 수정 실패!");
				return "common/error";
			}
	}
	
	@RequestMapping("edel.do")
	public String deleteEmployment(Model model, @RequestParam(name="recruit_num")int recruit_num ) {
		int result = employmentService.deleteEmployment(recruit_num);
		if(result > 0)
			return "redirect:employmentList.do";
		else {
			model.addAttribute("message", "채용 공고 삭제 실패!");
			return "common/error";
		}
	}
	
	@RequestMapping("employmentList.do")
	public ModelAndView employmentList(ModelAndView mv, Employment employment ) {
		ArrayList<Employment> employmentList = employmentService.selectList(employment);
		mv.addObject("employmentList", employmentList);
		mv.setViewName("common/employmentList");
		return mv;
	}
	
	@RequestMapping("allEmploymentList.do")
	public ModelAndView allEmploymentList(ModelAndView mv, Employment employment) {
		
		ArrayList<Employment> allEmploymentList = employmentService.selectAllList(employment);
		mv.addObject("allEmploymentList", allEmploymentList);
		mv.setViewName("common/allEmploymentList");
		return mv;

	}
	
	@RequestMapping("allEmploymentList2.do")
	public ModelAndView allEmploymentList2(ModelAndView mv, Employment employment) {
		ArrayList<Employment> allEmploymentList2 = employmentService.selectAllList(employment);
		mv.addObject("allEmploymentList2", allEmploymentList2);
		mv.setViewName("common/allEmploymentList2");
		return mv;

	}
	
	//applyEmp.do
	@RequestMapping("applyEmp.do")
	public ModelAndView applyEmp(ModelAndView mv,
			@RequestParam(name="userid")String userid, @RequestParam(name="recruit_num")int recruit_num) {
		
		Employment employment = employmentService.selectEmployment(recruit_num);
		
		System.out.println("유저아이디 출력 : " + userid);
		ArrayList<Resume> resumeList = resumeSerivce.selectList(userid);
		
		System.out.println("이력서 사이즈 : " + resumeList.size());
		
		mv.addObject("employment", employment);
		mv.addObject("resumeList", resumeList);
		mv.setViewName("apply/applyForm");
		
		
		System.out.println("값오는지 확인 : " + recruit_num);
		return mv;
		
		
	

	}
}










