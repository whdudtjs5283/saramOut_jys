package org.kh.saramout.resume.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.kh.saramout.apply.model.service.ApplyService;
import org.kh.saramout.member.model.service.MemberService;
import org.kh.saramout.member.model.vo.Member;
import org.kh.saramout.mscrape.model.service.MScrapeService;
import org.kh.saramout.resume.model.service.ResumeService;
import org.kh.saramout.resume.model.vo.Resume;
import org.kh.saramout.resumecheck.model.service.ResumeCheckService;
import org.kh.saramout.resumecheck.model.vo.ResumeCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ResumeController {
   
   @Resource(name = "resumeUploadPath")
   String resumeUploadPath;
   
   @Autowired
   private MemberService memberService;
   
   @Autowired
   private ResumeService resumeService;
   
   @Autowired
   private ApplyService applyService;
   
   @Autowired
   private MScrapeService mScrapeService;
   
   @Autowired
   private ResumeCheckService resumeCheckService;
   
   
   @RequestMapping("moveDetailResume.do")
   public ModelAndView moveDetailResume(ModelAndView mv, ResumeCheck resumeCheck,
		   @RequestParam(name="resume_no") int resume_no,
		   @RequestParam(name="bid", required = false) String rc_bid) {
	   
      Resume resume = resumeService.selectResume(resume_no);
      
      if( rc_bid != null ) {
 
    	  resumeCheck.setRc_no(0);
		  resumeCheck.setRc_userid(resume.getResume_userid());
		  resumeCheck.setRc_bid(rc_bid);
		  resumeCheck.setRc_company("회사명");
		  resumeCheck.setRc_recruitcnt(0);
		  resumeCheck.setRc_open_date("열람일");
		  resumeCheck.setRc_check("미확인");
		  
		resumeCheckService.insertResumeCheck(resumeCheck);
	  }
      
      
      
      
      //5월24일 두줄추가
      String userid = resume.getResume_userid();
      ArrayList<Resume> resumeList = resumeService.selectList(userid);
  
      
      
      // 영어로 번역
      
      Resume transresume = resumeService.selectResume(resume_no);
      Resume transresume2 = resumeService.selectResume(resume_no);
      Resume transresume3 = resumeService.selectResume(resume_no);
      String introduce = transresume.getResume_introduce_document();
      
      String clientId = "Hl5ra6TqDfU4zKLwDRI5";//애플리케이션 클라이언트 아이디값";
      String clientSecret = "q_MN8Xk1eK";//애플리케이션 클라이언트 시크릿값";
      try {
          String text = URLEncoder.encode(introduce, "UTF-8");
          
          
          String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
          URL url = new URL(apiURL);
          HttpURLConnection con = (HttpURLConnection)url.openConnection();
          con.setRequestMethod("POST");
          con.setRequestProperty("X-Naver-Client-Id", clientId);
          con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
          // post request
          String postParams = "source=ko&target=en&text=" + text;
          con.setDoOutput(true);
          DataOutputStream wr = new DataOutputStream(con.getOutputStream());
          wr.writeBytes(postParams);
          wr.flush();
          wr.close();
          int responseCode = con.getResponseCode();
          BufferedReader br;
          if(responseCode==200) { // 정상 호출
              br = new BufferedReader(new InputStreamReader(con.getInputStream()));
          } else {  // 에러 발생
              br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
          }
          String inputLine;
          StringBuffer response = new StringBuffer();
          while ((inputLine = br.readLine()) != null) {
              response.append(inputLine);
          }
          br.close();
          System.out.println("response.toString 출력" + response.toString());
         
          String transResult;
          
          transResult = response.toString();
          
          JSONParser parser = new JSONParser();	//파서 선언
  	      JSONObject obj = (JSONObject) parser.parse(transResult);
  	      System.out.println("message값으로 옵젝트키 출력 : " + obj.get("message"));

  	      String transResult2 = obj.get("message").toString();
  	      
  	      JSONObject obj2 = (JSONObject) parser.parse(transResult2);
  	      //여기까지 파싱 두번함, 세번해야 접근되는듯
  	      System.out.println("obj2.get(result)" + obj2.get("result"));
  	      
  	      //세번째 파싱
  	      String transResult3 = obj2.get("result").toString();
  	      JSONObject obj3 = (JSONObject) parser.parse(transResult3);
  	      
  	      System.out.println("translatedText 출력시도 : " + obj3.get("translatedText"));
  	      introduce = (String) obj3.get("translatedText");
  	      
  	      transresume.setResume_introduce_document(introduce);
  	      
  	      
  	    mv.addObject("transresume", transresume);
  	    
  	      
          
         
      } catch (Exception e) {
          System.out.println(e);
      }
      
      
      /*일본어로 번역*/
      
      try {
          String text = URLEncoder.encode(introduce, "UTF-8");
          
          
          String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
          URL url = new URL(apiURL);
          HttpURLConnection con = (HttpURLConnection)url.openConnection();
          con.setRequestMethod("POST");
          con.setRequestProperty("X-Naver-Client-Id", clientId);
          con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
          // post request
          String postParams = "source=en&target=ja&text=" + text;
          con.setDoOutput(true);
          DataOutputStream wr = new DataOutputStream(con.getOutputStream());
          wr.writeBytes(postParams);
          wr.flush();
          wr.close();
          int responseCode = con.getResponseCode();
          BufferedReader br;
          if(responseCode==200) { // 정상 호출
              br = new BufferedReader(new InputStreamReader(con.getInputStream()));
          } else {  // 에러 발생
              br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
          }
          String inputLine;
          StringBuffer response = new StringBuffer();
          while ((inputLine = br.readLine()) != null) {
              response.append(inputLine);
          }
          br.close();
          System.out.println("일본어 테스트 출력" + response.toString());
         
          String transResult;
          
          transResult = response.toString();
          
          JSONParser parser = new JSONParser();	//파서 선언
  	      JSONObject obj = (JSONObject) parser.parse(transResult);
  	      System.out.println("message값으로 옵젝트키 출력2 : " + obj.get("message"));

  	      String transResult2 = obj.get("message").toString();
  	      
  	      JSONObject obj2 = (JSONObject) parser.parse(transResult2);
  	      //여기까지 파싱 두번함, 세번해야 접근되는듯
  	      System.out.println("obj2.get(result)" + obj2.get("result"));
  	      
  	      //세번째 파싱
  	      String transResult3 = obj2.get("result").toString();
  	      JSONObject obj3 = (JSONObject) parser.parse(transResult3);
  	      
  	      System.out.println("translatedText2 출력시도 : " + obj3.get("translatedText"));
  	      introduce = (String) obj3.get("translatedText");
  	      
  	      transresume2.setResume_introduce_document(introduce);
  	      
  	      
  	    mv.addObject("transresume2", transresume2);
  	    
  	    
  	    
  	    
  	      
          
         
      } catch (Exception e) {
          System.out.println(e);
      }
      

      /*중국어로 번역*/
      
      try {
          String text = URLEncoder.encode(introduce, "UTF-8");
          
          
          String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
          URL url = new URL(apiURL);
          HttpURLConnection con = (HttpURLConnection)url.openConnection();
          con.setRequestMethod("POST");
          con.setRequestProperty("X-Naver-Client-Id", clientId);
          con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
          // post request
          String postParams = "source=ja&target=zh-CN&text=" + text;
          con.setDoOutput(true);
          DataOutputStream wr = new DataOutputStream(con.getOutputStream());
          wr.writeBytes(postParams);
          wr.flush();
          wr.close();
          int responseCode = con.getResponseCode();
          BufferedReader br;
          if(responseCode==200) { // 정상 호출
              br = new BufferedReader(new InputStreamReader(con.getInputStream()));
          } else {  // 에러 발생
              br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
          }
          String inputLine;
          StringBuffer response = new StringBuffer();
          while ((inputLine = br.readLine()) != null) {
              response.append(inputLine);
          }
          br.close();
          System.out.println("중국어 테스트 출력" + response.toString());
         
          String transResult;
          
          transResult = response.toString();
          
          JSONParser parser = new JSONParser();	//파서 선언
  	      JSONObject obj = (JSONObject) parser.parse(transResult);
  	      System.out.println("message값으로 옵젝트키 중국어 출력3 : " + obj.get("message"));

  	      String transResult2 = obj.get("message").toString();
  	      
  	      JSONObject obj2 = (JSONObject) parser.parse(transResult2);
  	      //여기까지 파싱 두번함, 세번해야 접근되는듯
  	      System.out.println("obj2.get(result)" + obj2.get("result"));
  	      
  	      //세번째 파싱
  	      String transResult3 = obj2.get("result").toString();
  	      JSONObject obj3 = (JSONObject) parser.parse(transResult3);
  	      
  	      System.out.println("translatedText 중국어3 출력시도 : " + obj3.get("translatedText"));
  	      introduce = (String) obj3.get("translatedText");
  	      
  	      transresume3.setResume_introduce_document(introduce);
  	      
  	      
  	    mv.addObject("transresume3", transresume3);
  	    

      } catch (Exception e) {
          System.out.println(e);
      }
      //5월24일 resumeLIst 추가
      mv.addObject("resumeList", resumeList);
      mv.addObject("resume", resume);
      mv.setViewName("resume/resumeDetail");
      //mv.setViewName("trans/resumetrans");
      
      //System.out.println("resumedetail : " + resume);
      return mv;
   }
   
	   
   //번역된 스트링 값을 받아 다시 새창으로 보내주는 로직 수행
	   @RequestMapping("trans.do")
   public ModelAndView transResume(ModelAndView mv, 
		   @RequestParam(name="introduce")String introduce, 
		   @RequestParam(name="introduce2")String introduce2,
		   @RequestParam(name="introduce3")String introduce3) {
		   
		   System.out.println("trans.do로 번역 객체 오는지 확인 : " + introduce);
		   System.out.println("trans.do로 번역2 객체2 오는지 확인2 : " + introduce2);
		   System.out.println("trans.do로 번역2 객체2 오는지 확인2 : " + introduce3);
		   
		   mv.addObject("introduce", introduce);
		   mv.addObject("introduce2", introduce2);
		   mv.addObject("introduce3", introduce3);
			mv.setViewName("trans/resumetrans");

		   return mv;
   }
	   //새창 안열고 바로이동
	   @RequestMapping("trans2.do")
	   public ModelAndView transResume2(ModelAndView mv, 
			   @RequestParam(name="introduce")String introduce, 
			   @RequestParam(name="introduce2")String introduce2,
			   @RequestParam(name="introduce3")String introduce3,
			   @RequestParam(name="resume_no")int resume_no) {
			   
			   System.out.println("trans.do로 번역 객체 오는지 확인 : " + introduce);
			   System.out.println("trans.do로 번역2 객체2 오는지 확인2 : " + introduce2);
			   System.out.println("trans.do로 번역2 객체2 오는지 확인2 : " + introduce3);
			   
			   Resume resume = resumeService.selectResume(resume_no);
			   
			   mv.addObject("introduce", introduce);
			   mv.addObject("introduce2", introduce2);
			   mv.addObject("introduce3", introduce3);
			   mv.addObject("resume", resume);
				mv.setViewName("trans/resumetransNone");

			   return mv;
	   }
   
	   @RequestMapping("moveNewResume.do")
	   public ModelAndView moveNewResume(ModelAndView mv, @RequestParam(name="userid") String userid) {
	      Member member = memberService.selectMember(userid);
	      
	      mv.addObject("member", member);
	      mv.setViewName("resume/resumeForm");
	      return mv;
	   }
   
   

   @RequestMapping(value="resumeinsert.do", method=RequestMethod.POST)
   public String resumeRegister(Resume resume, HttpServletRequest request,
         @RequestParam(name="opic", required = false) MultipartFile file) throws Exception { 
      System.out.println("file : " + file.getOriginalFilename());
      
      String savedName = file.getOriginalFilename();
      
      savedName = uploadFile(savedName, file.getBytes());
      
      resume.setResume_opic(file.getOriginalFilename());
      
      resume.setResume_rpic(savedName);
      
      /*String savePath = request.getSession().getServletContext().getRealPath("/resources/resume");
      file.transferTo(new File((savePath) + "\\" + file.getOriginalFilename()));
      resume.setResume_opic(file.getOriginalFilename());*/
      
 
      
      if(resumeService.insertResume(resume) > 0) {
         System.out.println("이력서 등록 컨트롤러 : " + resume);
         System.out.println("file : " + file.getOriginalFilename() );
         return "redirect:moveMyResumeList.do?userid=" + resume.getResume_userid();
      } else {
         System.out.println("file : " + file.getOriginalFilename() );
         return "common/error";
      }
      
   }

   @RequestMapping("moveUpdateResume.do")
   public ModelAndView moveUpdateResume(ModelAndView mv, @RequestParam(name="resume_no") int resume_no) {
      Resume resume = resumeService.selectResume(resume_no);
      System.out.println("업데이트이동 : " + resume);
      mv.addObject("resume", resume);
      mv.setViewName("resume/resumeUpdateForm");
      return mv;
   }
   
   @RequestMapping(value="updateResume.do", method=RequestMethod.POST)
   public String updateResume(Resume resume,
         @RequestParam(name="opic", required=false) MultipartFile file,
         @RequestParam(name="opic2", required=false) String opic2,
         HttpServletRequest request) throws Exception{
	  

	  if(!file.isEmpty()) {
	      System.out.println("file != null");
	      String savedName = file.getOriginalFilename();
	      savedName = uploadFile(savedName, file.getBytes());
	      resume.setResume_opic(file.getOriginalFilename());
	      resume.setResume_rpic(savedName);
	  } else {
		  System.out.println("file = null");
		  resume.setResume_opic(opic2);
		  resume.setResume_rpic(resume.getResume_rpic());
	  }
	  
      int result = resumeService.updateResume(resume);
      
      if(result > 0) {
         return "redirect:moveDetailResume.do?resume_no=" + resume.getResume_no();
      } else {
         return "common/error";
      }
         
   }
   
   private String uploadFile(String originalName, byte[] fileData) throws Exception {
      UUID uuid = UUID.randomUUID();
      String savedName = uuid.toString() + "_" + originalName;
      File target = new File(resumeUploadPath, savedName);
      FileCopyUtils.copy(fileData, target);
      return savedName;
   }

   @RequestMapping("deleteResume.do")
   public String deleteResume(@RequestParam(name="resume_no") int resume_no) {
      int result = resumeService.deleteResume(resume_no);
      if(result > 0) {
         return "home";
      } else {
         return "common/error";
      }
   }
   
/*   @RequestMapping("moveMyResumeList.do")
   public String moveMyResume(Resume resume, @RequestParam(name="userid") String userid, Model model) {
      ArrayList<Resume> resumeList = resumeService.selectList(userid);
      System.out.println(resumeList);
      model.addAttribute("resumeList", resumeList);
      return "resume/myResumeList";
   }*/
   
   @RequestMapping("moveMyResumeList.do")
   public ModelAndView moveMyResumeList(ModelAndView mv, @RequestParam(name="userid") String userid) {
      ArrayList<Resume> resumeList = resumeService.selectList(userid);
   
      String apply_userid = userid;
      int applyCnt = applyService.selectApplyCnt(apply_userid);
      String mscrape_userid = userid; 
      int mScrapeCnt = mScrapeService.selectMScrapeCnt(mscrape_userid);
      String rc_userid = userid;
      int checkCnt = resumeCheckService.selectCheckCnt(rc_userid);
      
      System.out.println("applyCnt : " + applyCnt);
      System.out.println("resumeList : " + resumeList);
      System.out.println("mSCrapeCnt : " + mScrapeCnt);
      
      mv.addObject("checkCnt", checkCnt);
      mv.addObject("mScrapeCnt", mScrapeCnt);
      mv.addObject("applyCnt", applyCnt);
      mv.addObject("resumeList", resumeList);
      mv.setViewName("resume/myResumeList");
      return mv;
   }
   
   //5월24일 메소드 추가
   
   @RequestMapping("moveFindTalentList.do")
   public ModelAndView moveFindTalent(ModelAndView mv, Map<String, Integer> parameters,
		   @RequestParam(name="page") int page) {
	   
	   int currentPage = 1;
	      if(page != 0) {
	    	  currentPage = page;
	      }
	   
	   int limit = 10;
	   int listCount = 0;
	      int pageLimit = 5;
	      listCount = resumeService.selectFindTalentCnt();
	      
	  int maxPage = (int)((double)listCount / limit + 0.9);
	  int startPage = (((int)((double)currentPage / pageLimit +0.9))-1)  * pageLimit + 1; 
	  int endPage = startPage + pageLimit -1;                                             //마지막
	  if(maxPage < endPage) {
	       endPage =maxPage;
	  }
	      
	  int startRow = (currentPage -1) * limit + 1;
	  int endRow = startRow + limit - 1;
	
	  parameters.put("startRow", startRow);
      parameters.put("endRow", endRow);
      
      System.out.println("startRow : " + startRow);
      System.out.println("endRow : " + endRow);
    		  
      ArrayList<Resume> talentList = resumeService.selectFindTalentList(parameters);
      
      System.out.println("talentList : " + talentList);
      
      mv.addObject("currentPage", currentPage);
      mv.addObject("pageLimit",pageLimit);
	  mv.addObject("maxPage",maxPage );
	  mv.addObject("startPage", startPage);
	  mv.addObject("endPage",endPage );	   
	  mv.addObject("listCount",listCount );
      mv.addObject("talentList", talentList);
      mv.setViewName("resume/findTalentList");
      return mv;
   }
   
   @RequestMapping("movetest.do")
   public ModelAndView test(ModelAndView mv) {
	  int resume_no = 167;
	  String userid = "user01";
	  ArrayList<Resume> resumeList = resumeService.selectList(userid);
	   Resume resume = resumeService.selectResume(resume_no);
	   
	   mv.addObject("resumeList", resumeList);
	   mv.addObject("resume", resume);
	  mv.setViewName("resume/test");
      return mv;
   }
   
   @RequestMapping("moveimg.do")
   public ModelAndView test2(ModelAndView mv) {
	  int resume_no = 135;
	   
	   Resume resume = resumeService.selectResume(resume_no);
	   
	   mv.addObject("resume", resume);
	  mv.setViewName("common/img");
      return mv;
   }
   
   @RequestMapping("movemy.do")
   public ModelAndView test3(ModelAndView mv) {
	  int resume_no = 135;
	   
	   Resume resume = resumeService.selectResume(resume_no);
	   
	   mv.addObject("resume", resume);
	  mv.setViewName("common/pricing");
      return mv;
   }
   
   @RequestMapping("movegrid.do")
   public ModelAndView test4(ModelAndView mv) {
	  int resume_no = 135;
	   
	   Resume resume = resumeService.selectResume(resume_no);
	   
	   mv.addObject("resume", resume);
	  mv.setViewName("common/grid-system");
      return mv;
   }
   
   @RequestMapping("moveResumeCheckList.do")
   public ModelAndView moveResumeCheck(ModelAndView mv, Map<String, Object> parameters,
		   @RequestParam(name="page") int page,
		   @RequestParam(name="userid") String rc_userid) {
	   
	   int currentPage = 1;
	      if(page != 0) {
	    	  currentPage = page;
	      }
	      
	   int limit = 10;
	   int listCount = 0;
	      int pageLimit = 5;
	      listCount = resumeCheckService.selectResumeCheckListCnt(rc_userid);
	      
	      int checkCnt = resumeCheckService.selectCheckCnt(rc_userid);
	      
	      int startRow = (currentPage -1) * limit + 1;
	      int endRow = startRow + limit - 1;
	      
	      parameters.put("startRow", startRow);
	      parameters.put("endRow", endRow);
	      parameters.put("rc_userid", rc_userid);
	   
	  String apply_userid = rc_userid;
	  int applyCnt = applyService.selectApplyCnt(apply_userid);
	  String mscrape_userid = rc_userid; 
	  
	  int mScrapeCnt = mScrapeService.selectMScrapeCnt(mscrape_userid);
	  String userid = rc_userid;
      ArrayList<Resume> resumeList = resumeService.selectList(userid);
      
      ArrayList<ResumeCheck> rcList = null;
     
    
    		  
      System.out.println("startRow : " + startRow);
      System.out.println("endRow : " + endRow);
      
      rcList = resumeCheckService.selectResumeCheckList(parameters);
      
     resumeCheckService.updateCheck(rc_userid); 
      
      int maxPage = (int)((double)listCount / limit + 0.9);
      int startPage = (((int)((double)currentPage / pageLimit +0.9))-1)  * pageLimit + 1; 
      int endPage = startPage + pageLimit -1;
      if(maxPage < endPage) {
         endPage =maxPage;
      }
      
      mv.addObject("checkCnt", checkCnt); 
      mv.addObject("resumeList", resumeList);
      mv.addObject("mScrapeCnt", mScrapeCnt);
      mv.addObject("applyCnt", applyCnt);
      mv.addObject("currentPage", currentPage);
      mv.addObject("pageLimit",pageLimit);
	  mv.addObject("maxPage",maxPage );
	  mv.addObject("startPage", startPage);
	  mv.addObject("endPage",endPage );	   
	  mv.addObject("listCount",listCount );
      mv.addObject("rcList", rcList);
      mv.setViewName("resume/resumeCheckList");
      return mv;
   }
   
}



















