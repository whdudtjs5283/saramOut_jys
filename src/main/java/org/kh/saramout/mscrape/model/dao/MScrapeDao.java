package org.kh.saramout.mscrape.model.dao;

import java.util.List;

import org.kh.saramout.mscrape.model.vo.MScrape;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("MScrapeDao")
public class MScrapeDao {

	public void insertScrape(SqlSessionTemplate session, MScrape mScrape) {
		session.insert("mscrapeMapper.insertMScrape", mScrape);
		
	}

	public void deleteScrape(SqlSessionTemplate session, MScrape mScrape) {
		session.delete("mscrapeMapper.deleteMScrape", mScrape);
	}

	public MScrape selectScrape(SqlSessionTemplate session, MScrape mScrape) {
		return session.selectOne("mscrapeMapper.selectMScrape", mScrape);
	}

	public List<MScrape> selectList(SqlSessionTemplate session, String mscrape_userid) {
		return session.selectList("mscrapeMapper.selectMScrapeList", mscrape_userid);
	}

	public int selectMScrapeCnt(SqlSessionTemplate session, String mscrape_userid) {
		return session.selectOne("mscrapeMapper.selectMScrapeCnt", mscrape_userid);
	}

}
