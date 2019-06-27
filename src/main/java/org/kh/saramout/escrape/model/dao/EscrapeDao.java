package org.kh.saramout.escrape.model.dao;

import org.kh.saramout.escrape.model.vo.EScrape;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("EscrapeDao")
public class EscrapeDao {

	public void insertScrape(SqlSessionTemplate session, EScrape eScrape) {
		session.insert("escrapeMapper.insertEScrape", eScrape);
		
	}

	public void updateScrape(SqlSessionTemplate session, EScrape eScrape) {
		session.update("escrapeMapper.updateEScrape", eScrape);
		
	}

	public void deleteScrape(SqlSessionTemplate session, EScrape eScrape) {
		session.delete("escrapeMapper.deleteEScrape", eScrape);
		
	}

	public EScrape selectScrape(SqlSessionTemplate session, EScrape eScrape) {
		return session.selectOne("escrapeMapper.selectEScrape", eScrape);
	}
	
	

}
