package org.kh.saramout.escrape.controller;

import org.kh.saramout.escrape.model.service.EscrapeService;
import org.kh.saramout.escrape.model.vo.EScrape;
import org.kh.saramout.resume.model.service.ResumeService;
import org.kh.saramout.resume.model.vo.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class EScrapeController {

	@Autowired
	private ResumeService resumeService;
	
	@Autowired
	private EscrapeService eScrapeService;

	@RequestMapping("moveScrape.do")
		public ModelAndView moveScrape(ModelAndView mv, EScrape eScrape, Resume resume,
				@RequestParam(name="resume_no", required = false) int eScrape_resume_no,
				@RequestParam(name="bid", required = false) String eScrape_bid) {
		
		resume = resumeService.selectResume(eScrape_resume_no);
		
		eScrape.setEscrape_resume_no(eScrape_resume_no);
		eScrape.setEscrape_bid(eScrape_bid);
		
		eScrape = eScrapeService.selectService(eScrape);
		System.out.println(eScrape);
		mv.addObject("resume", resume);
		mv.addObject("eScrape", eScrape);
	    mv.setViewName("scrape/eMyScrape");
	    
	    /*System.out.println("스크랩 불러오기(이력서번호, bid) : " + eScrape.getEscrape_resume_no() + ", " + eScrape.getEscrape_bid());*/
	    return mv;
	 }
	
	
/*	@RequestMapping(value = "eScrape.do", method = RequestMethod.POST, produces = "application/json")
		public int eScrape(ModelAndView mv, Resume resume, EScrape eScrape,
				@RequestParam(name="bid") String bid,
				@RequestParam(name="resume_no") int resume_no,
				@RequestParam(name="like") int heart) {
		
		resume = resumeService.selectResume(resume_no);
		System.out.println(resume.getResume_title());
		
		eScrape.setEscrape_no(0);
		eScrape.setEscrape_bid(bid);
		eScrape.setEscrape_resume_no(resume_no);
		eScrape.setEscrape_resume_title(resume.getResume_title());
		eScrape.setEscrape_username(resume.getResume_username());
		eScrape.setEscrape_userbirthday(resume.getResume_userbirthday());
		eScrape.setEscrape_hope_salary(resume.getResume_hope_salary());
		eScrape.setEscrape_school(resume.getResume_school());
		eScrape.setEscrape_schoolclass(resume.getResume_school_classification());
		eScrape.setEscrape_career("2년 5개월");
		eScrape.setEscrape_graduate_yn(resume.getResume_graduate_yn());
		eScrape.setEscrape_like(heart);

		
		
		if (heart >= 1) {
			eScrapeService.deleteScrape(eScrape);
			heart = 0;
		} else {
			eScrapeService.insertScrape(eScrape);
			heart = 1;
		}
		return heart;
	}*/
	
	public static int count = 0;
	
	@RequestMapping(value="change.do", method = RequestMethod.POST)
	@ResponseBody
	public String change(Resume resume, EScrape eScrape,
			@RequestParam String flag,
			@RequestParam(name="bid", required = false) String bid,
			@RequestParam(name="resume_no") int resume_no) throws Exception{
		
		
		resume = resumeService.selectResume(resume_no);
		System.out.println(resume.getResume_title());
		System.out.println("저장 전 bid : " + bid);
		eScrape.setEscrape_no(0);
		eScrape.setEscrape_bid(bid);
		eScrape.setEscrape_resume_no(resume_no);
		eScrape.setEscrape_resume_title(resume.getResume_title());
		eScrape.setEscrape_username(resume.getResume_username());
		eScrape.setEscrape_userbirthday(resume.getResume_userbirthday());
		eScrape.setEscrape_hope_salary(resume.getResume_hope_salary());
		eScrape.setEscrape_school(resume.getResume_school());
		eScrape.setEscrape_schoolclass(resume.getResume_school_classification());
		eScrape.setEscrape_career("2년 5개월");
		eScrape.setEscrape_graduate_yn(resume.getResume_graduate_yn());
		eScrape.setEscrape_like(count);
		
		System.out.println(eScrape.getEscrape_career());
	
		System.out.println("저장 후 bid : " + eScrape.getEscrape_bid());
		System.out.println(flag);
		if (eScrape.getEscrape_like() > 0) {
			eScrapeService.insertScrape(eScrape);
			System.out.println("insert like : " + eScrape.getEscrape_like());
			count = -1;
		} else {
				eScrapeService.deleteScrape(eScrape);
			System.out.println("delete like : " + eScrape.getEscrape_like());
			count = 1;
		}
		
		System.out.println(eScrape.getEscrape_like());
		
		return String.valueOf(count);
	}
	
	
}




















