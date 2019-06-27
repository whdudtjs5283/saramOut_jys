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
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.kh.saramout.member.model.vo.Member;
import org.kh.saramout.navernews.model.service.NaverNewsService;
import org.kh.saramout.navernews.model.vo.NaverNews;
import org.kh.saramout.recruit.model.service.RecruitService;
import org.kh.saramout.recruit.model.vo.Recruit;





//네이버 검색 API 관련 임포트
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
import java.net.HttpURLConnection;
//import java.net.URL;
import java.net.URLEncoder;



@Controller
public class RecruitController {
	
	@Autowired
	private RecruitService recruitService;
	
	@Autowired
	private NaverNewsService navernewsService;
	
	/*   
	 * 만약 단순 페이지를 이동할시에는..
	 * method를 지우시거나..
	@RequestMapping("/" )

	GET/POST를 둘다 선언해 주세요.
	@RequestMapping(value="/" , method = {RequestMethod.GET, RequestMethod.POST})*/
	
	@RequestMapping(value="recruitlist.do")
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
	"http://openapi.seoul.go.kr:8088/53666b5764646a6833306d7a574a58/json/GetJobInfo/770/999";
	  
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
	
	
	
	@RequestMapping("workinfoList.do")
	public ModelAndView selectAllRecruit(ModelAndView mv,@RequestParam int page, Map<String, Integer> parameters ) {
		
		//페이징 시작, 페이징 변수선언
		List<Recruit> list = null;
		  int currentPage = 1;
	         if(page != 0) {
	            currentPage = page; }
	         
	         int limit = 10;                     //page안에서의 리미트
	         int listCount = 0;                  //전체목록
	         int pageLimit = 5;
	         listCount = recruitService.AllRecruitCount();      //전체 몇개??
	         
	         int startRow = (currentPage -1) * limit + 1;
	         int endRow = startRow + limit - 1;
	         
	         
	         parameters.put("startRow", startRow);
	         parameters.put("endRow", endRow);
	         
	         //페이징된 셀렉트 값 불러오기
	        list = recruitService.selectRecruitList(parameters);
	         
	         int maxPage = (int)((double)listCount / limit + 0.9);                                    //총페이지수
	         int startPage = (((int)((double)currentPage / pageLimit +0.9))-1)  * pageLimit + 1;      //시작
	         int endPage = startPage + pageLimit -1;                                             //마지막
	         if(maxPage < endPage) {
	            endPage =maxPage;
	         }
	         
	         
	         // 밑에는 원래있던 소스
	         
	      /*   
	         
	         원본코드
	         ArrayList<Recruit> selectAll = recruitService.selectRecruitAll();
		
		
			System.out.println("셀렉트올 1번 출력 :  " +  selectAll.get(1).getAcdmcrcmmncodese());
			System.out.println("셀렉트올 1번 Bassadrescn 출력 :  " +  selectAll.get(1).getBassadrescn());
*/
			
			/*원래값
		    mv.addObject("selectAll", selectAll);
		    mv.setViewName("recruit/SelectAllList" );*/
		    
		    mv.addObject("list", list);
		    mv.addObject("currentPage", currentPage);
		    mv.addObject("pageLimit",pageLimit);
		    mv.addObject("maxPage",maxPage );
		    mv.addObject("startPage", startPage);
		    mv.addObject("endPage",endPage );
		    mv.addObject("listCount",listCount );
		    mv.setViewName("recruit/SelectAllList" );
		    
		
		return mv;		
		
	}// 셀렉트 메소드 닫기
	
	
	@RequestMapping("recruitDetail.do")
	public ModelAndView selectOneRecruit(ModelAndView mv, 
			@RequestParam(name="joregistno") String joregistno) {
		

		Recruit recruit = recruitService.selectOneRecruit(joregistno);
		
		String ACDCODE = recruit.getAcdmcrcmmncodese();
		String BName = recruit.getCmpnynm();
		
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
		
		
			System.out.println(" ********** BName 선택된 회사이름 출력 :  "  + BName + "*********" );
			
			
			
			
			// 네이버 뉴스값 api로 가져오기
			
			String clientId = "4iqDOp9psKahtxMAhfXl";//애플리케이션 클라이언트 아이디값";
	        String clientSecret = "khkGKYd7oG";//애플리케이션 클라이언트 시크릿값";
	        
	        List<NaverNews> newsList = navernewsService.selectAllnews();
	        NaverNews navernews = null;
	        
	        try {
	            String text = URLEncoder.encode(BName, "UTF-8");
	            String apiURL = "https://openapi.naver.com/v1/search/news?query="+ text; // json 결과
	            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("X-Naver-Client-Id", clientId);
	            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  // 에러 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            
	            String inputLine;
	            StringBuffer response1 = new StringBuffer();
	            
	            
	            while ((inputLine = br.readLine()) != null) {
	                 response1.append(inputLine);
	            	
	            }

	            
	            br.close();
	            
	            String NaverResult;
	            
	            NaverResult = response1.toString();
	            
	        	System.out.println("String 값으로 뉴스출력  :  " + NaverResult);
	        	System.out.println("");
	            System.out.println("뉴스출력 ( response1.toString()  ) :  " + response1.toString());
	            System.out.println("");
	            
	          JSONParser parser = new JSONParser();
	          
	  	      JSONObject obj = (JSONObject) parser.parse(NaverResult);
	  	      
	  	    	System.out.println("디테일에서 설정된 obj.get아이템.toString() : " + obj.get("items").toString());
	  	    
	  	    	String ResultNew = obj.get("items").toString();
	  	    	
	  	    	
	  	    	//String[] Sarray = new String[9];

	  	    	//String ResultNew 자체가 배열이라함..그래서 제이슨어레이로 받아야함
	  	    	JSONArray obj2 = (JSONArray)parser.parse(ResultNew);
	  	    	
	  	    	String originallink;
	  	    	String link; String description; String title;

	  	    	//포문 시작
	  	    	for(int i=0; i<obj2.size()-1; i++) {
		
	  	    	 JSONObject value = (JSONObject)obj2.get(i);

	  	    	originallink = (String)value.get("originallink");
		  	  	link = (String)value.get("link");
		  	  	description = (String)value.get("description");
		  	  	title = (String)value.get("title");
		  	  	 
		  	  	
		  	  
		  		 newsList.get(i).setDescription(description);
			  	  	newsList.get(i).setLink(link);
			  	  newsList.get(i).setDescription(description);
			  	newsList.get(i).setOriginallink(originallink);
	  	    	
	  	    	}//큰 for문
	  	    	
	  	    	/* for(int i=0; i<8; i++) {
			  	  	 newsList.get(i).setDescription(description);
			  	  	newsList.get(i).setLink(link);
			  	  newsList.get(i).setDescription(description);
			  	newsList.get(i).setOriginallink(originallink);
			  	  	 
			  	  	 }*/
	  	    	
	  	    	
	  	    	 System.out.println("Set한 0번째 인덱스 newsList가 {} 바깥에서도 적용되나 확인 : " +
	  			  	  	 newsList.get(0).getDescription());
	  	    	 
	  	    	

	  	  	 
	  	  	 // 내생각에 여기서 별도의 set 콘트롤러를 만들어서 보내면 될듯
	  	  	 


	  	  	 	// 프라이빗으로 autowired 했기 때문에 가능함
	  	  	 	
	  	  	 	//최초 1회만 네이버 뉴스값을 입력하고, 그값을 계속 set하는 방식으로 출력함
	  	  	 	//int result = navernewsService.insertNaverNews(naverNews);
	  	  	 	
	  	  	 	//값한개만 보내는게 아니라 selectall해서 전체값을 가져와야함

	  	  	 	
	  	  	 	//List<Object> newsList = navernewsService.selectAllnews();
	  	  	 	
	  		//for(i=0; i<newsList.size(); i++) {
	  	  	 	//newsList.set(i, naverNews);
	  	  	 	//System.out.println("set한 newsList 다시 출력함 : " + newsList.get(i).toString());
	  	  	
	  	  //	}


	  	  	 	//mv.addObject("naverNews", naverNews);
	  	  	 	
	  	  	 	//mv.setViewName("naverNews/recruitDetail" );

	  	    		
	            
	        } catch (Exception e) {
	            System.out.println(e);
	        }

			
			//최종 뷰 보내기
	        
	        System.out.println("최종 보내기 전 뉴스리스트 set되었나 3번째확인" + newsList.get(3).toString());
	        System.out.println("최종 보내기 전 뉴스리스트 set되었나 3번째확인" + newsList.get(7).toString());
	        

			
	        mv.addObject("newsList", newsList);
		    mv.addObject("recruit", recruit);
		    mv.setViewName("recruit/recruitDetail" );
		    return mv;	
		
	}// 셀렉트 메소드 닫기
	
	
	@RequestMapping("jobSearch.do")
	public ModelAndView jobSearch(ModelAndView mv, String jobSearch[]  ){

		//안고른 값일때는 null포인터 오류가남..
		//문제가 배열이 몇개가 올지 알수없음..
		
	String[] jobSearch2 = jobSearch;
		
		HashMap array = new HashMap();
		
		//객체키, 밸류
		//array.put("콜센터", jobSearch[0]) ;
		array.put("청소", jobSearch[1]) ;
		array.put("서빙", jobSearch[2]) ;
		array.put("주방", jobSearch[3]) ;
		array.put("영업", jobSearch[4]) ;
		array.put("판매", jobSearch[5]) ;
		array.put("조리사", jobSearch[6]) ;
		


	
	//System.out.println("다시담은값 0" + jobSearch2[0]);
	System.out.println("다시담은값 0" +jobSearch2[1]);
	System.out.println("다시담은값 0" +jobSearch2[2]);
	System.out.println("다시담은값 0" +jobSearch2[3]);
	System.out.println("다시담은값 0" +jobSearch2[4]);
	System.out.println("다시담은값 0" +jobSearch2[5]);
	System.out.println("다시담은값 0" +jobSearch2[6]);
	
		

	//recruitService.jobSearch(jobSearch2);
	

		return mv;
	}
	
		
	@RequestMapping("locSearch.do")
	public ModelAndView locSearch(ModelAndView mv, String loccategory[]  ){

			//안고른 값일때는 null포인터 오류가남..
			//문제가 배열이 몇개가 올지 알수없음..
			
		for(int i=0; i<loccategory.length; i++) {
	System.out.println("category1 String배열 고른만큼 출력 테스트 : " + loccategory[i] );
				
			}
			
			return mv;
		}
	
	
}// 전체 public class RecruitController 닫기




