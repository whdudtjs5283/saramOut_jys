package org.kh.saramout.member.naverLoginContoller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

//네이버 라이브러리 추가해야 가능함
import com.github.scribejava.core.model.OAuth2AccessToken;

import org.kh.saramout.member.model.service.MemberService;
import org.kh.saramout.member.model.vo.Member;
import org.kh.saramout.member.naver.JsonParser.JsonParser;
import org.kh.saramout.member.naver.bo.NaverLoginBO;
import org.kh.saramout.member.naver.bo.*;


/**
 * Handles requests for the application home page.
 */
@Controller
public class NaverLoginController {
	
	//클래스 이름은 내가 설정함
	@Autowired
	private MemberService memberservice;
	

	/*NaverLoginBo*/

	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	
	
	//로그인 첫 화면 요청 메소드
	@RequestMapping(value="원본NewNaverlogin.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String login(Model model, HttpSession session) {
		
		 /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		System.out.println("");
		System.out.println("NewNaverlogin.do 로 오는지 테스트");
		System.out.println("");
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		System.out.println("네이버" + naverAuthUrl);
		
		//네이버
		model.addAttribute("url",naverAuthUrl);
		
		//생성한 인증 url을 view 로 전달
		return "member/naverLogin";
	}
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value="원본callback.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, Member member) throws IOException, ParseException {
		
		OAuth2AccessToken oauthToken;
		JsonParser json = new JsonParser();
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		//로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
		
		model.addAttribute("result", apiResult);
		System.out.println("result" + apiResult);
		
		return "member/naversuccess";
	}
	//네이버 로그인 체크
	@RequestMapping("원본checklogin.do")
	public String checklogin(@RequestParam String email,HttpServletRequest request,HttpSession session,SessionStatus status) {
		System.out.println(email);
		int result =  memberservice.checklogin(email);
		System.out.println(result);
		if(result > 0) {
			Member loginMember = memberservice.loginCheck(email);
			session.setAttribute("loginMember", loginMember);
			status.setComplete();
			System.out.println("로그인완료 : " + loginMember);
			return "main";
		}else {
			request.setAttribute("email", email);
			return "member/addenroll";
		}
	}
}
