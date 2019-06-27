package org.kh.saramout.mscrape.model.service;

import java.util.ArrayList;

import org.kh.saramout.mscrape.model.dao.MScrapeDao;
import org.kh.saramout.mscrape.model.vo.MScrape;
import org.kh.saramout.resume.model.vo.Resume;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("MScrapeService")
public class MScrapeServiceImpl implements MScrapeService {

	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	MScrapeDao mScrapeDao;
	
	@Override
	public void insertScrape(MScrape mScrape) {
		System.out.println("insertService");
		mScrapeDao.insertScrape(mybatisSession, mScrape);
	}

	@Override
	public void deleteScrape(MScrape mScrape) {
		System.out.println("deleteService");
		mScrapeDao.deleteScrape(mybatisSession, mScrape);
	}
	
	@Override
	public MScrape selectScrape(MScrape mScrape) {
		return mScrapeDao.selectScrape(mybatisSession, mScrape);
	}

	@Override
	public ArrayList<MScrape> selectScrapeList(String mscrape_userid) {
		return (ArrayList<MScrape>) mScrapeDao.selectList(mybatisSession, mscrape_userid);
	}

	@Override
	public int selectMScrapeCnt(String mscrape_userid) {
		return mScrapeDao.selectMScrapeCnt(mybatisSession, mscrape_userid);
	}

}
