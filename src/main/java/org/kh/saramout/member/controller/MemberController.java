package org.kh.saramout.member.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.kh.saramout.enterprise.model.service.EnterPriseService;
import org.kh.saramout.enterprise.model.vo.EnterPrise;
import org.kh.saramout.member.model.service.MemberService;
import org.kh.saramout.member.model.vo.Member;
import org.kh.saramout.member.naver.JsonParser.JsonParser;
import org.kh.saramout.member.naver.bo.NaverLoginBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class MemberController {
	//MemberService DI
	@Autowired
	private MemberService memberService;
	



	/*NaverLoginBo 및 네이버 로긴 관련*/

	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	
	//로그인 첫 화면 요청 메소드
		@RequestMapping(value="NewNaverlogin.do", method= {RequestMethod.GET, RequestMethod.POST})
		public String login(Model model, HttpSession session) {
			
			 /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
			System.out.println("");
			System.out.println("NewNaverlogin.do 로 오는지 테스트");
			System.out.println("");
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
			
			System.out.println("naverAuthUrl 출력해봄" + naverAuthUrl);
			
			//네이버
			model.addAttribute("url",naverAuthUrl);
			
			//생성한 인증 url을 view 로 전달
			return "member/naverLogin";
		}
		
		//네이버 로그인 성공시 callback호출 메소드
		@RequestMapping(value="callback.do", method= {RequestMethod.GET, RequestMethod.POST})
		public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, Member member) throws IOException, ParseException {
			
			System.out.println("콜백 호출");
			
			OAuth2AccessToken oauthToken;
			
			//네이버 블로그 설명 상에는 밑에 json 생성부분이 없음..
			//JsonParser json = new JsonParser();
			
			oauthToken = naverLoginBO.getAccessToken(session, code, state);
			//로그인 사용자 정보를 읽어온다.
			apiResult = naverLoginBO.getUserProfile(oauthToken);
			System.out.println(
					"naverLoginBO.getUserProfile(oauthToken).toString() 출력 : " 
			+ naverLoginBO.getUserProfile(oauthToken).toString());
			
			model.addAttribute("result", apiResult);
			System.out.println("result" + apiResult);
			
			
			
			return "member/naversuccess";
			//네이버 로그인으로는 면접지원은 안되고 게시글 보기만 되도록 설정
			//home으로 가되 header는 따로 만들어야됨. 
			//return "home";
		}
		//네이버 로그인 체크
		@RequestMapping("checklogin.do")
		public String checklogin(Model model, @RequestParam String email,HttpServletRequest request,HttpSession session,SessionStatus status) {
			System.out.println(email);
			//체크로그인이랑, 로그인체크는  다르다. 
			
			System.out.println("네이버 석세스에서 온 이메일 출력 : " + email);
			int result =  memberService.checklogin(email);
			
			System.out.println("checklogin result 출력 : " + result);
			
			if(result > 0) {
				Member loginMember = memberService.loginCheck(email);
				session.setAttribute("loginMember", loginMember);
				status.setComplete();
				System.out.println("로그인완료 : " + loginMember);
				return "home";
			}else {
				request.setAttribute("email", email);
				
				//model.addAttribute("id_Num" , id_Num);
				//model.addAttribute("nickname" , nickname);
		
				model.addAttribute("email", email);
				return "member/enrollPageNaver";
			}
		}
	
	
	/*NaverLoginBo 및 네이버 로긴 관련 끝 */
		
	
		
		
	
	
	@RequestMapping(value="jusoPopup.do")
	public String DoroAPIMethod( ) {
		
		return "popup/jusoPopup";

	}
	
	@RequestMapping(value="jusoPopuptest.do")
	public String DoroAPIMethodTest( ) {
		
		return "popup/jusoPopuptest";

	}
	
	@RequestMapping(value="login1.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String login1(Model model, HttpSession session ) {
		
		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		System.out.println("naverAuthUrl 출력해봄" + naverAuthUrl);
		
		//네이버
		model.addAttribute("url",naverAuthUrl);
		
		return "common/login1";

	}
	
	
	
	


	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginMethod(Member member, 
			HttpSession session, SessionStatus status, 
			Model model) {
		
		Member loginMember = memberService.selectLogin(member);
		
		if(loginMember != null) {
			session.setAttribute("loginMember", loginMember);
			status.setComplete();   //요청 성공
			
			return "home";
		}else {
			model.addAttribute("message", "아이디나 비번이 다릅니다");
			return "common/error";
		}
	}
	
	//id 찾기
	
	@RequestMapping(value="searchidPage.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String searchidPageMethod() {
		return "member/searchidpage";
		
		//Member  = memberService.selectLogin(member);
		
	}
	

	
	
	@RequestMapping(value="searchajax.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public String searchajax(@RequestParam(name="username") String username,
			@RequestParam(name="email") String email)
	{
		Member member = new Member();
		member.setUsername(username);
		member.setEmail(email);
	
		String userid= memberService.selectSearchId(member);
		
		return userid;
		

			
		//System.out.println("유저네임 : " + username);
		//System.out.println("이메일 : " + email);
		//System.out.println("AJAX로 받아온 Userid :  " + userid);
		

		//Member  = memberService.selectLogin(member);
		
	}
	
	@RequestMapping(value="idchk.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public int searchajax(@RequestParam(name="userid") String userid)
	{
		Member member = new Member();
		member.setUsername(userid);
	
		member = memberService.selectMember(userid);
		
		if (member!=null) {
			return 1;
		}else {
			return 0;
		}
		
		
		
		
	}
	
	
	
	@RequestMapping("logout.do")
	public String logoutMethod(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			session.invalidate();
		}
		
		return "home";
	}
	
	@RequestMapping("enroll.do")
	public String moveEnrollPage() {
		return "member/enrollPage";
	}
	
	@RequestMapping(value="minsert.do", method=RequestMethod.POST)
	public String insertMember(Member member,  HttpServletRequest request, 
			Model model) {
		System.out.println("member : " + member);
		
		System.out.println("젠더값이 왔는지" + member.getGender());
		//
		System.out.println("입력된 전체 풀 주소 출력 : " + member.getFulladdress());
		
		
		if(memberService.insertMember(member) > 0)
			return "home";
		else {
			model.addAttribute("message", "회원 가입 실패!");
			return "common/error";
		}
	}
	
	@RequestMapping("myinfo.do")
	public ModelAndView selectMember(ModelAndView mv, 
			/*HttpServletRequest request*/
			@RequestParam(name="userid") String userid) {
		//ModelAndView mv = new ModelAndView();
		//String userid = request.getParameter("userid");
		
		Member member = memberService.selectMember(userid);
		
		mv.addObject("member", member);
		//request.setAttribute("member", member);
		mv.setViewName("member/memberDetailView");
		
		return mv;		
	}
	
	@RequestMapping("mdel.do")
	public String memberDelete(Model model,
			@RequestParam(name="userid") String userid) {
		int result = memberService.deleteMember(userid);
		if(result > 0)
			return "redirect:logout.do";
		else {
			model.addAttribute("message", "회원 탈퇴 실패!");
			return "common/error";
		}
			
	}
	
	@RequestMapping("mupview.do")
	public ModelAndView updateViewMember(ModelAndView mv,
			@RequestParam(name="userid") String userid) {
		
		Member member = memberService.selectMember(userid);
		
		if(member != null) {
			mv.addObject("member", member);
			mv.setViewName("member/memberUpdatePage");		
		}else {
			mv.addObject("message", "수정할 회원정보 조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
	@RequestMapping(value="mupdate.do", method=RequestMethod.POST)
	public String updateMember(Member member, 
			Model model) {
		int result = memberService.updateMember(member);
		if(result > 0) {
			return "redirect:myinfo.do?userid=" + member.getUserid();
		}else {
			model.addAttribute("message", "회원정보 수정 실패!");
			return "common/error";
		}
	}
	
}









