package org.kh.saramout.member.model.service;

import java.util.ArrayList;

import org.kh.saramout.member.model.dao.MemberDao;
import org.kh.saramout.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	//마이바티스 연동 객체 선언
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private MemberDao memberDao;
	
	
	@Override
	public Member selectLogin(Member member) {
		return memberDao.selectLogin(mybatisSession, member);
	}
	
	
	
			//네이버로그인2 / 카카오로그인
	// 원래 밑에 것들은 mybatisSession, 부분이 없는데 내가 추가함
			@Override
			public int checklogin(String email) {
				
				return memberDao.checklogin(mybatisSession, email);
			}
			//네이버 중복 로그인2 / 카카오로그인
			@Override
			public Member loginCheck(String email) {
				
				return memberDao.loginCheck(mybatisSession, email);
			}
	
	
	

	@Override
	public int insertMember(Member member) {
		return memberDao.insertMember(mybatisSession, member);
	}

	@Override
	public int updateMember(Member member) {		
		return memberDao.updateMember(mybatisSession, member);
	}

	@Override
	public int deleteMember(String userid) {		
		return memberDao.deleteMember(mybatisSession, userid);
	}

	@Override
	public ArrayList<Member> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member selectMember(String userid) {		
		return memberDao.selectMember(mybatisSession, userid);
	}
	
	@Override
	public String selectSearchId(Member member) {		
		return memberDao.selectSearchId(mybatisSession, member);
	}

}











