package org.kh.saramout.recruit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.kh.saramout.member.model.vo.Member;
import org.kh.saramout.recruit.model.service.RecruitService;
import org.kh.saramout.recruit.model.vo.Recruit;







@Controller
public class RecruitController2 {
	
	@Autowired
	private RecruitService recruitService;
	
	/*   
	 * 만약 단순 페이지를 이동할시에는..
	 * method를 지우시거나..
	@RequestMapping("/" )

	GET/POST를 둘다 선언해 주세요.
	@RequestMapping(value="/" , method = {RequestMethod.GET, RequestMethod.POST})*/
	
	@RequestMapping(value="recruitlist13133144444.do")
	public String insertMethod(Recruit recruit, HttpServletRequest request,
			ModelAndView mv) {
		
		 Recruit recruit2 = new Recruit();
		
	    try{
	    	 
	          // 서비스 인증키입니다. 공공데이터포털에서 제공해준 인증키를 넣어주시면 됩니다.
	          String serviceKey = "개인별로 받은 인증키를 넣어주세요";
	           
	          // 정보를 모아서 URL정보를 만들면됩니다. 맨 마지막 "&_type=json"에 따라 반환 데이터의 형태가 정해집니다.
	  //String urlStr = "http://openapi.seoul.go.kr:8088/53666b5764646a6833306d7a574a58/xml/GetJobInfo/1/5/J00106/";
	  //String urlStr = "http://openapi.seoul.go.kr:8088/53666b5764646a6833306d7a574a58/json/GetJobInfo/1/50/";

	  //http://요청주소/인증키/요청파일타입/OpenAPI호출서비스명/요청시작위치/요청종료위치/{검색어}
	  //http://요청주소/인증키/요청파일타입/OpenAPI호출서비스명/요청시작위치/요청종료위치/{검색어}
	  //http://요청주소/인증키/요청파일타입/OpenAPI호출서비스명/요청시작위치/요청종료위치/{검색어}
	  //요청인자 KEY(인증키)필수, TYPE(요청파일타입)필수, SERVICE(서비스명)필수, START인덱스(필수), END인덱스(필수), 학력코드, 고용형태코드, 경력조건코드
	  
	  //예제) JOO104 = 중학교로 1~50까지 검색
		//http://openapi.seoul.go.kr:8088/53666b5764646a6833306d7a574a58/json/GetJobInfo/1/50/J00104
	  
	          
	          //한번에 말고 200개단위로 받아야함
	  String urlStr = 
	  //"http://openapi.seoul.go.kr:8088/53666b5764646a6833306d7a574a58/json/GetJobInfo/365/800";
	"http://openapi.seoul.go.kr:8088/53666b5764646a6833306d7a574a58/json/GetJobInfo/1/300";
	  
	  //현재 위는 학력코드가 J00106인 상태임(고등학교)
	  
	  	URL url = new URL(urlStr); // 위 urlStr을 이용해서 URL 객체를 만들어줍니다.
	          BufferedReader bf;
	          String line = "";
	          String result="";

	          //날씨 정보를 받아옵니다.
	          bf = new BufferedReader(new InputStreamReader(url.openStream()));

	          
	          	//원본
	          //버퍼에 있는 정보를 하나의 문자열로 변환.
	          while((line=bf.readLine())!=null){
	              result=result.concat(line);
	              System.out.println("받아온 전체 출력 하지않음 XXXX : " );  // 받아온 데이터를 확인해봅니다. 원래는 + RESULT임
	          }//try 닫기
	          
	         
	          
	           // Json parser를 만들어 만들어진 문자열 데이터를 객체화 합니다.
	      JSONParser parser = new JSONParser();
	      JSONObject obj = (JSONObject) parser.parse(result);
	      
	     
	       
	   	//탑레벨
	      JSONObject parseGetJobInfo = (JSONObject) obj.get("GetJobInfo");
	      //다음레벨
		JSONObject parse_list_total_count = (JSONObject) parseGetJobInfo.get("RESULT");  
	   
		 System.out.println("GetJobInfo접근후-> 키값 result  출력 : " + parse_list_total_count);
		 
		 //row는 [로 시작하므로 배열이고, 이것을 제이슨 어레이화함
		         
		      //JSONArray parse_Array = (JSONArray) parseGetJobInfo.get("row");
		      JSONArray parse_Array = (JSONArray) parseGetJobInfo.get("row");
		      JSONObject Test;
		      String CodeName;
		      
		      System.out.println("파스어레이 사이즈 출력  " + parse_Array.size() );
		      
		 for(int i=0; i<5; i++) {
		 	Test = (JSONObject)parse_Array.get(i);
		 	CodeName = (String)Test.get("JOBCODE_NM");
		 	System.out.println("CodeName 5개만출력  " + CodeName );
		 	
		 }//for문 닫기
		 


		 //이렇게 하니 성공함! 내생각에 getJobinfo만 접근하면 나머지 row로 바로접근해도됨.
		 
		 JSONObject WorkInfo;
		 
		
		 
		 
		 
		 
		 String JOREGISTNO; //구인등록번호
		 int REREGISTNO;	//구인등록번호에서 등록숫자 10개만 추출
		 
		 
		 
		 String JOBCODENM; // 모집직종코드명
		 String ACDMCRCMMNCODESE; // 학력코드
		 String WORKTIMENM; // 근무시간
		 String RCEPTMTHNM; // 접수방법
		 String WORKTMNM; //근무형태
		 String CAREERCNDNM; //경력조건코드 
		 String JOFEINSRSBSCRBNM; //4대보험
		 String HOPEWAGE; //급여조건
		 String EMPLYMSTLECMMNMM; // 고용형태 코드명
		 String WORKPARARBASSADRESCN; // 근무 예정지 주소
		 String BSNSSUMRYCN; // 사업 요약 내용
		 String CMPNYNM; //기업 명칭
		 String DTYCN; // 직무 내용
		 
		 //추가
		 String BASSADRESCN;//기업주소
		 String MNGRPHONNO;	//담당 상담사 전화번호
		 String RCEPTCLOSNM; 	//마감일
		 
		 
		 
		 //원본
		 //for(int i=0; i<parse_Array.size(); i++) {
		 for(int i=0; i<180; i++) {
			
			 WorkInfo = (JSONObject)parse_Array.get(i);
			 
			 JOREGISTNO = (String)WorkInfo.get("JO_REGIST_NO");
			 
			 //문자열에서 추출한다음에 숫자로 형변환해야함
			 // 이때 7개 따오면 스트링 객체라서 인티저 파스인트로 해봄...
			 REREGISTNO= (int)Integer.parseInt(JOREGISTNO.substring(6));
			 
			 
			 /////////////////////////////////
			 
			 
			 JOBCODENM = (String)WorkInfo.get("JOBCODE_NM");
		
			 ACDMCRCMMNCODESE = (String)WorkInfo.get("ACDMCR_CMMN_CODE_SE");
			 WORKTIMENM = (String)WorkInfo.get("WORK_TIME_NM");
			 RCEPTMTHNM = (String)WorkInfo.get("RCEPT_MTH_NM");
			 WORKTMNM = (String)WorkInfo.get("WORK_TM_NM");
			 CAREERCNDNM = (String)WorkInfo.get("CAREER_CND_NM");
			 
			 JOFEINSRSBSCRBNM = (String)WorkInfo.get("JO_FEINSR_SBSCRB_NM");
			 HOPEWAGE = (String)WorkInfo.get("HOPE_WAGE");
			 EMPLYMSTLECMMNMM = (String)WorkInfo.get("EMPLYM_STLE_CMMN_MM");
			 WORKPARARBASSADRESCN = (String)WorkInfo.get("WORK_PARAR_BASS_ADRES_CN");
			 BSNSSUMRYCN = (String)WorkInfo.get("BSNS_SUMRY_CN");
			 CMPNYNM = (String)WorkInfo.get("CMPNY_NM");
			 DTYCN = (String)WorkInfo.get("DTY_CN");
			 
			 //추가
			BASSADRESCN = (String)WorkInfo.get("BASS_ADRES_CN");	//기업주소
			 MNGRPHONNO = (String)WorkInfo.get("MNGR_PHON_NO");//담당 상담사 전화번호
			 RCEPTCLOSNM = (String)WorkInfo.get("RCEPT_CLOS_NM");	//마감일
			 
			
			//recruit2에 값들을 세팅해보기
			
			//recruit2.setJOREGISTNO(JO_REGIST_NO);
			recruit2.setJoregistno(JOREGISTNO);  
			
			recruit2.setReregistno(REREGISTNO);
			
			
			
			recruit2.setJobcodenm(JOBCODENM);    
			recruit2.setAcdmcrcmmncodese(ACDMCRCMMNCODESE);  
			recruit2.setWorktimenm(WORKTIMENM);     
			recruit2.setRceptmthnm(RCEPTMTHNM);
			recruit2.setWorktmnm(WORKTMNM);    
			recruit2.setCareercndnm(CAREERCNDNM);		
			recruit2.setJofeinsrsbscrbnm(JOFEINSRSBSCRBNM);		
			recruit2.setHopewage(HOPEWAGE);
			recruit2.setEmplymstlecmmnmm(EMPLYMSTLECMMNMM);
			recruit2.setWorkpararbassadrescn(WORKPARARBASSADRESCN);	
			recruit2.setBsnssumrycn(BSNSSUMRYCN);
			recruit2.setCmpnynm(CMPNYNM);	
			recruit2.setDtycn(DTYCN);
			recruit2.setBassadrescn(BASSADRESCN);
			recruit2.setMngrphonno(MNGRPHONNO);	
			recruit2.setRceptclosnm(RCEPTCLOSNM);
			
	
			
	///////////마감일에서 숫자값만 따기
			
			String Date = recruit2.getRceptclosnm().substring(17, 27);
			System.out.println("String값 데이트 : " + Date);
		
			//yyyyMMddHHmmss
			DateFormat sdFormat = new SimpleDateFormat("yyyyMMddHHmm");
			DateFormat sdFormat2 = new SimpleDateFormat("yyyy-MM-dd-HH-mm");

			Date CloseTime = sdFormat.parse(Date);
			System.out.println("포맷 바꾼 데이트 : " + CloseTime);
					
			Date todayDate = new Date();
			String StringStartTime = sdFormat2.format(todayDate);	
			Date todayTime = sdFormat.parse(StringStartTime);
			
	
				
				
				System.out.println("String 형 오늘 날짜 " + StringStartTime);
				System.out.println("데이트 형 오늘 날짜와 마감날짜 " + todayTime + "  ,  "+ CloseTime);
			
				System.out.println("오늘 날짜를 getTime으로 변환후 출력 " + todayTime.getTime());
				System.out.println("마감 날짜를 getTime으로 변환후 출력 : " + CloseTime.getTime());
				
				
				//long 형 연산
				long calDate = CloseTime.getTime() - todayTime.getTime();
				
				System.out.println("calDate:   "+calDate);
				System.out.println("calDate   "+calDate);
				System.out.println("calDate   "+calDate);
				
				 long calDateDays = calDate / ( 24*60*60*1000); 
				 
		/* int day = (int) (calDate / (60 * 60 * 24));
		int hour = (int) ((calDate - day * 60 * 60 * 24) / (60*60));
		int minute = (int) ((calDate - day * 60 * 60 * 24 - hour * 3600)/ 60);
		int second = (int) (calDate % 60);
					
					System.out.println("롱 형으로 연산후 :   " + day + "일" + hour + "시간" + minute + "분"
							+ second + "초");*/


				
				
				
				int startTime = (int) todayTime.getTime();
				int endTime = (int) CloseTime.getTime();
				
				int restTime = endTime - startTime;
				
				/*Long startTime = todayTime.getTime();
				Long endTime = CloseTime.getTime();
				
				Long restTime = startTime - endTime;*/
				
				


	

				
	int day = restTime / (60 * 60 * 24);
	int hour = (restTime - day * 60 * 60 * 24) / (60*60);
	int minute = (restTime - day * 60 * 60 * 24 - hour * 3600)/ 60;
	int second = restTime % 60;
	
	System.out.println("rest타임으로 남은시간 테스트중" + day + "일" + hour + "시간" + minute + "분"
			+ second + "초");
				
				
				System.out.println("인트형 오늘날짜 :  " + startTime + "\n"+ "인트형 마감날짜"+ "인트형 연산값 : " + restTime);
				
				recruit2.setStarttime(startTime);
				recruit2.setEndtime(endTime);
				
				
				System.out.println(recruit2);
				int result2 = recruitService.insertRecruit(recruit2);
				
				
				if (result2 >0) {
					System.out.println("시간값 입력 완료");
					System.out.println(recruit2.getStarttime());
					
					
				}
				
		
			
			
			
			
			
			//recruitService.insertRecruit(recruit2);
		
			 
		 }// for문 닫기?
		 
		 
		 //category = (String)WorkInfo.get("JO_REGIST_NO"); 
		 // 이렇게 넣을수가없음..
		  

	          bf.close();
	      }catch(Exception e){
	          System.out.println(e.getMessage());
	      }
	    
	    //api데이터를 데이터베이스에 입력
	    
	    
	    //받아와서 데이터베이스에 입력
	    //recruitService.insertRecruit(recruit2);
	    
	   
	    
	    if ((recruitService.insertRecruit(recruit2) >0 ) 
	    		&& (recruitService.selectRecruitAll() != null ))
	    		
	    	return "recruit/recruitList";
	    else {
	    	//model.addAttribute("message", "회원 가입 실패!");
			return "common/error";
	    	
	    }
		
		
	  

		
		
	}// public String insertMethod 닫기
	
	
	
	@RequestMapping("workinfoList21421414444.do")
	public ModelAndView selectAllRecruit(ModelAndView mv) {
		
		ArrayList<Recruit> selectAll = recruitService.selectRecruitAll();
		
		
			System.out.println("셀렉트올 1번 출력 :  " +  selectAll.get(1).getAcdmcrcmmncodese());
			System.out.println("셀렉트올 1번 Bassadrescn 출력 :  " +  selectAll.get(1).getBassadrescn());
		    
			
			
		    mv.addObject("selectAll", selectAll);
		    mv.setViewName("recruit/SelectAllList" );
		    
		
		return mv;		
		
	}// 셀렉트 메소드 닫기
	
	
	@RequestMapping("recruitDetail214214214214.do")
	public ModelAndView selectOneRecruit(ModelAndView mv, 
			@RequestParam(name="joregistno") String joregistno) {
		
		Recruit recruit = recruitService.selectOneRecruit(joregistno);
		
		String ACDCODE = recruit.getAcdmcrcmmncodese();
		
		int startTime = recruit.getStarttime();
		int endTime = recruit.getEndtime();
		
		int restTime = endTime - startTime;
		
		int day = restTime / (60 * 60 * 24);
		int hour = (restTime - day * 60 * 60 * 24) / (60*60);
		int minute = (restTime - day * 60 * 60 * 24 - hour * 3600)/ 60;
		int second = restTime % 60;
		
		System.out.println(day + "일" + hour + "시간" + minute + "분"
				+ second + "초");

		
		if (ACDCODE.equals("J00108")) {
			recruit.setAcdmcrcmmncodese("전문대학");	
		}else if(ACDCODE.equals("J00104")) {
			recruit.setAcdmcrcmmncodese("중학교");	
		}else if(ACDCODE.equals("J00106")) {
			recruit.setAcdmcrcmmncodese("고등학교");	
		}else if(ACDCODE.equals("J00110")) {
			recruit.setAcdmcrcmmncodese("대학, 대학교");
		}else if(ACDCODE.equals("J00100")) {
			recruit.setAcdmcrcmmncodese("무관");
		}else if(ACDCODE.equals("J00114")) {
			recruit.setAcdmcrcmmncodese("박사과정");
		}
		
		
			System.out.println("1개 셀렉트된  getBassadrescn 출력 :  "  + recruit.getBassadrescn()  );
			
	
			//최종 뷰 보내기
			
		    mv.addObject("recruit", recruit);
		    mv.setViewName("recruit/recruitDetail" );
		    return mv;	
		
	}// 셀렉트 메소드 닫기
	

	
	
}// 전체 public class RecruitController 닫기




