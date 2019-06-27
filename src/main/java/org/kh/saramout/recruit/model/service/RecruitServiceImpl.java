package org.kh.saramout.recruit.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.kh.saramout.recruit.model.dao.RecruitDao;
import org.kh.saramout.recruit.model.vo.Recruit;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("RecruitService")
public class RecruitServiceImpl implements RecruitService{
	//마이바티스 연동 객체 선언
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private RecruitDao recruitDao;
	
	@Override
	public int insertRecruit(Recruit recruit) {
		// TODO Auto-generated method stub
		return recruitDao.insertRecruit(mybatisSession, recruit);
	}
	
	@Override
	public ArrayList<Recruit> selectRecruitAll() {
		// TODO Auto-generated method stub
		return  (ArrayList<Recruit>) recruitDao.selectRecruitAll(mybatisSession);
	}
	
	@Override
	public Recruit selectOneRecruit(String joregistno) {
		
		return  recruitDao.selectOneRecruit(mybatisSession, joregistno);
	}
	
	@Override
	public int AllRecruitCount() {
		return recruitDao.selectListCount(mybatisSession);
	}
	
	@Override
	public List<Recruit> selectRecruitList(Map<String, Integer> parameters){
		return recruitDao.selectRecruitList(parameters, mybatisSession);
	}
	
	//직종으로 검색하기
	
	@Override
	
	public List<Recruit> jobSearch(String[] jobSearch2){
		return recruitDao.jobSearch(jobSearch2, mybatisSession);
	}
	
	
	

}
