package org.kh.saramout.enterprise.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kh.saramout.enterprise.model.service.EnterPriseService;
import org.kh.saramout.enterprise.model.vo.EnterPrise;
import org.kh.saramout.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class EnterPriseController {
	
	@Autowired
	private EnterPriseService enterpriseService;
	
	
	@RequestMapping("enroll2.do")
	public String moveEnrollPage() {
		System.out.println("기업회원 가입 콘트롤러 enroll2.do");
		return "entermember/enrollPage";
	}
	
	@RequestMapping("login2page.do")
	public String movelogin2Page() {
		System.out.println("기업회원 로근 페이지로 이동");
		return "common/login2";
	}
	
	@RequestMapping(value="login2.do", method= {RequestMethod.GET, 
			RequestMethod.POST})
	public String login2(EnterPrise enterprise, 
			HttpSession session, SessionStatus status, 
			Model model) {
		
		EnterPrise loginMember2 = enterpriseService.selectLogin(enterprise);
		
		if(loginMember2 != null) {
			session.setAttribute("loginMember2", loginMember2);
			status.setComplete();   //요청 성공
		
			
		return "home2";}
		else {
			model.addAttribute("message", "아이디나 비번이 다릅니다");
			return "common/error";
		}

	}
	
	@RequestMapping(value="minsert2.do", method=RequestMethod.POST)
	public String insertMember(EnterPrise enterprise,  //HttpServletRequest request, 
			Model model) {
		

		
		System.out.println("enterprise " + enterprise);
		
		
		//
		System.out.println("회사명 출력해봄 : " + enterprise.getCompany());
		
		
		if(enterpriseService.insertEnterPrise(enterprise) > 0)
			return "home";
		else {
			model.addAttribute("message", "기업회원 가입 실패!");
			return "common/error";
		}
	}

}
