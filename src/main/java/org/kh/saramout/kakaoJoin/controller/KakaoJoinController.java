package org.kh.saramout.kakaoJoin.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonNode;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.kh.saramout.kakaoJoin.model.KakaoJoinAccessToken;
import org.kh.saramout.kakaoJoin.model.KakaoJoinMemberInfo;
import org.kh.saramout.member.model.service.MemberService;
import org.kh.saramout.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class KakaoJoinController {
	
	@Autowired
	MemberService memberservice;
	
	private int result = 0;
	
	JsonNode accessToken;
	
	//내가 별도로 선언
	
	
	@RequestMapping(value="kakaojoin.do" , produces = "application/json", method=RequestMethod.GET)
	public String kakaojoin(Model model, @RequestParam("code")String code, RedirectAttributes ra, HttpSession session, HttpServletResponse response) {
		
		System.out.println("kakao code : " + code);
		
		//JsonNode 트리 형태로 토큰 받아온다
		
		//겟엑세스2로 해서 가입은 다른 토큰으로 받음
		
		JsonNode jsonToken = KakaoJoinAccessToken.getAccessToken2(code);
		//여러 json 객체중 access_token을 가져온다
		accessToken = jsonToken.get("access_token");
		
		System.out.println("access_token2 액세스토큰: "+ accessToken);
		
		//access_token을 통해 사용자 정보 요청
		JsonNode memberInfo = KakaoJoinMemberInfo.getKakaoUserInfo(accessToken);
		
		//Get id 
		String id_Num = memberInfo.path("id").asText();
		String email = null;
		
		String kaccount_email = memberInfo.path("kaccount_email").asText();
		String age = memberInfo.path("age").asText();
	

		System.out.println("k어카운트 이메일 : " + kaccount_email + age);
		System.out.println("memberInfo to스트링 출력 : " + memberInfo.toString());
		
		//가입되어 있는지 카카오아이디로 찾는다.
		
		//유저정보 카카오에서 가져오기
		JsonNode properties = memberInfo.path("properties");
		JsonNode kakao_account = memberInfo.path("kakao_account");
		
		email = kakao_account.path("email").asText();
		
		
		//밑에부터 내가씀, 파싱
		
		JSONParser parser = new JSONParser();
		String nickname;
		
	    try {
			JSONObject obj = (JSONObject) parser.parse(memberInfo.toString());
			System.out.println("get 프로퍼티 출력 : " + obj.get("properties"));
			JSONObject obj2 = (JSONObject) obj.get("properties");
			System.out.println("get 카카오 닉네임 출력 : " + obj2.get("nickname"));
			nickname = (String) obj2.get("nickname");
			

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		
		//이메일은 못가져오는것같음
		//로그인이 계속된상태임..
		//글고 지금 카카오로 로긴하는 리다이렉트가 없음
		System.out.println("카카오에서 가져온 이메일 : " + email);
		System.out.println("카카오에서 가져온 id넘버 : " + id_Num);
		
		
		
		result =  memberservice.checklogin(email); //db에 저장된 값있는지 확인
		System.out.println(result);
		if(result > 0) {
			//아이디랑 일치시키면 세션생성하게 만들면끝
			//selectMember
			//Member loginMember = memberservice.loginCheck(email);
			
			Member loginMember = memberservice.selectMember(id_Num);
			session.setAttribute("loginMember", loginMember);
			System.out.println("로그인완료 : " + loginMember);
			System.out.println("세션생성후 아이디출력 : " + loginMember.getUserid());
			return "main";
		}else {
			
			model.addAttribute("id_Num" , id_Num);
			//model.addAttribute("nickname" , nickname);
	
			model.addAttribute("email", email);
			
			//파라메터 저장
			ra.addAttribute("email", email);
			return "member/enrollPageKakao";
		}		
	}
	
	
	
	

}
