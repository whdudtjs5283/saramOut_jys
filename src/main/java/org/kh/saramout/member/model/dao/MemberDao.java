package org.kh.saramout.member.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.kh.saramout.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDao {

	public Member selectLogin(SqlSessionTemplate session, Member member) {
		return session.selectOne("memberMapper.selectLogin", member);
	}
	

	public int insertMember(SqlSessionTemplate session, Member member) {
		return session.insert("memberMapper.insertMember", member);
	}

	public Member selectMember(SqlSessionTemplate session, String userid) {
		return session.selectOne("memberMapper.selectMember", userid);
	}

	public int deleteMember(SqlSessionTemplate session, String userid) {
		return session.delete("memberMapper.deleteMember", userid);
	}

	public int updateMember(SqlSessionTemplate session, Member member) {
		return session.update("memberMapper.updateMember", member);
	}
	
	//네이버로그인
	// 원래 밑에 것들은 SqlSessionTemplate session, 부분이 없는데 내가 추가함
	public int checklogin(SqlSessionTemplate session,String email) {
				
	return session.selectOne("memberMapper.checklogin", email);
			}
		
			//네이버 로그인 / 카카오 로그인
	public Member loginCheck(SqlSessionTemplate session, String email) {
	return session.selectOne("memberMapper.loginCheck",email);
			}


	public String selectSearchId(SqlSessionTemplate session, Member member) {
		// TODO Auto-generated method stub
		
	

		return session.selectOne("memberMapper.selectMemberId", member);
	}

}










