package org.kh.saramout.navernews.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.saramout.navernews.model.dao.NaverNewsDao;
import org.kh.saramout.navernews.model.vo.NaverNews;
import org.kh.saramout.recruit.model.vo.Recruit;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("NaverNewsService")
public class NaverNewsServiceImpl implements NaverNewsService{
	//마이바티스 연동 객체 선언
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private NaverNewsDao naverNewsDao;
	
	@Override
	public int insertNaverNews(NaverNews naverNews) {
		return naverNewsDao.insertNaverNews(mybatisSession, naverNews);
	}
	
	@Override
	public List<NaverNews> selectAllnews() {
		// TODO Auto-generated method stub
		return naverNewsDao.selectAllnews(mybatisSession);
	}

}
