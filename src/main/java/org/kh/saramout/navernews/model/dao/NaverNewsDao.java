package org.kh.saramout.navernews.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.saramout.navernews.model.vo.NaverNews;
import org.kh.saramout.recruit.model.vo.Recruit;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("NaverNewsDao")
public class NaverNewsDao {
	
public int insertNaverNews(SqlSessionTemplate session, NaverNews naverNews) {
		
		System.out.println("DAO로 온 네이버뉴스 : " + naverNews.getDescription() );

		return session.insert("navernewsMapper.insertNaverNews", naverNews);
	}

public List<NaverNews> selectAllnews(SqlSessionTemplate session) {

	return session.selectList("navernewsMapper.selectNaverNewsAll");
	
}

}
