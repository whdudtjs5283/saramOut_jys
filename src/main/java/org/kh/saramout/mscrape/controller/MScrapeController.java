package org.kh.saramout.mscrape.controller;

import java.util.ArrayList;

import org.kh.saramout.apply.model.service.ApplyService;
import org.kh.saramout.employment.model.service.EmploymentService;
import org.kh.saramout.employment.model.vo.Employment;
import org.kh.saramout.mscrape.model.service.MScrapeService;
import org.kh.saramout.mscrape.model.vo.MScrape;
import org.kh.saramout.resume.model.service.ResumeService;
import org.kh.saramout.resume.model.vo.Resume;
import org.kh.saramout.resumecheck.model.service.ResumeCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MScrapeController {
	
	@Autowired
	private EmploymentService employmentService;
	
	@Autowired
	private MScrapeService mScrapeService;
	
	@Autowired
	private ResumeService resumeService;
	
	@Autowired
	private ApplyService applyService;

	@Autowired
	private ResumeCheckService resumeCheckService;
	   
	public static int count = 0;
	
	@RequestMapping(value="mscrape.do", method = RequestMethod.POST)
	@ResponseBody
	public String change(Employment employment, MScrape mScrape,
			@RequestParam(name="flag") String flag,
			@RequestParam(name="userid", required = false) String mscrape_userid,
			@RequestParam(name="recruit_num") int mscrape_recruit_num) throws Exception{
		
		
		employment = employmentService.selectEmployment(mscrape_recruit_num);
		
		mScrape.setMscrape_no(0);
		mScrape.setMscrape_recruit_no(mscrape_recruit_num);
		mScrape.setMscrape_recruit_bid(employment.getBid());
		mScrape.setMscrape_recruit_title(employment.getRecruit_title());
		mScrape.setMscrape_recruit_enddate(employment.getEnddate());
		mScrape.setMscrape_company("회사명");
		mScrape.setMscrape_career(employment.getCareer());
		mScrape.setMscrape_education(employment.getEducation());
		mScrape.setMscrape_workarea(employment.getWork_area());
		mScrape.setMscrape_workfield(employment.getWork_field());
		mScrape.setMscrape_worktype(employment.getWork_type());
		mScrape.setMscrape_like(count);
		mScrape.setMscrape_userid(mscrape_userid);
		
		
		if (mScrape.getMscrape_like() > 0) {
			mScrapeService.insertScrape(mScrape);
			System.out.println("insert like : " + mScrape.getMscrape_like());
			count = -1;
		} else {
			mScrapeService.deleteScrape(mScrape);
			System.out.println("delete like : " + mScrape.getMscrape_like());
			count = 1;
		}
		
		System.out.println(mScrape.getMscrape_like());
		
		return String.valueOf(count);
	}
	
	@RequestMapping("moveMyMScrapeList.do")
	public ModelAndView moveMyMScrapeList(ModelAndView mv,
			@RequestParam(name="userid") String mscrape_userid) {
		
		ArrayList<MScrape> mScrapeList = mScrapeService.selectScrapeList(mscrape_userid);
		
		String apply_userid = mscrape_userid;
		int applyCnt = applyService.selectApplyCnt(apply_userid);
		int mScrapeCnt = mScrapeService.selectMScrapeCnt(mscrape_userid);
		String userid = mscrape_userid;
		ArrayList<Resume> resumeList = resumeService.selectList(userid);
		String rc_userid = mscrape_userid;
		int checkCnt = resumeCheckService.selectCheckCnt(rc_userid);
		
		mv.addObject("checkCnt", checkCnt);
	    mv.addObject("resumeList", resumeList);
	    mv.addObject("mScrapeCnt", mScrapeCnt);
	    mv.addObject("applyCnt", applyCnt);
		mv.addObject("resumeList", resumeList);
		mv.addObject("mScrapeList", mScrapeList);
		mv.setViewName("scrape/mMyScrape");
		return mv;
	}
	
}



















