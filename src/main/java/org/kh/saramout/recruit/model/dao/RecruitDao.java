package org.kh.saramout.recruit.model.dao;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.kh.saramout.recruit.model.vo.Recruit;
import org.mybatis.spring.SqlSessionTemplate;

@Repository("RecruitDao")
public class RecruitDao {
	
	public int insertRecruit(SqlSessionTemplate session, Recruit recruit2) {
		
		System.out.println("DAO로 온 REREGISTNO : " + recruit2.getReregistno() );
		

		return session.insert("recruitMapper.insertRecruit", recruit2);
	}
	
	public List<Recruit> selectRecruitAll(SqlSessionTemplate session) {

		return session.selectList("recruitMapper.selectRecruitAll");
		
	}
	
	public Recruit selectOneRecruit(SqlSessionTemplate session, 
			String joregistno) {

		return 
				session.selectOne("recruitMapper.selectOneRecruit", joregistno);
		
	}
	
	public int selectListCount(SqlSessionTemplate session) {
		return session.selectOne("recruitMapper.selectListCount"); 
	}

	public List<Recruit> selectRecruitList(Map<String, Integer> parameters, 
			SqlSessionTemplate session) {
		// TODO Auto-generated method stub
		return session.selectList("recruitMapper.selectRecruitList", parameters);
	}

	public List<Recruit> jobSearch(String[] jobSearch2, 
			SqlSessionTemplate session) {
		
		//return session.jobSearch("recruitMapper.jobSearch", jobSearch2);
		
		return session.selectList("recruitMapper.jobSearch", jobSearch2);
	}


	
	
	

}
