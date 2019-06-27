package org.kh.saramout.escrape.model.service;

import org.kh.saramout.escrape.model.dao.EscrapeDao;
import org.kh.saramout.escrape.model.vo.EScrape;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("EscrapeService")
public class EscrapeServiceImpl implements EscrapeService {

	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	EscrapeDao eScrapeDao;
	
	@Override
	public void insertScrape(EScrape eScrape) {
		System.out.println("insertService");
		eScrapeDao.insertScrape(mybatisSession, eScrape);
	}

	@Override
	public void deleteScrape(EScrape eScrape) {
		System.out.println("deleteService : " + eScrape.getEscrape_resume_no());
		eScrapeDao.deleteScrape(mybatisSession, eScrape);
	}
	
	@Override
	public void updateScrape(EScrape eScrape) {
		eScrapeDao.updateScrape(mybatisSession, eScrape);
	}

	@Override
	public EScrape selectService(EScrape eScrape) {
		return eScrapeDao.selectScrape(mybatisSession, eScrape);
	}
}
