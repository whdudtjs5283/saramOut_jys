package org.kh.saramout.member.model.service;

import java.util.ArrayList;

import org.kh.saramout.member.model.vo.Member;

public interface MemberService {
	//추상메소드만 멤버로 가짐
	//[public abstract] 반환형 메소드명(자료형 매개변수);
	Member selectLogin(Member member);
	
	//네이버 로그인
	int checklogin(String email);
	
	//네이버 중복 아이디 찾기 / 카카오 중복아이디찾기
	Member loginCheck(String email);
	
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String userid);
	
	ArrayList<Member> selectList();
	Member selectMember(String userid);
	String selectSearchId(Member member);
}






