package org.kh.saramout.mscrape.model.service;

import java.util.ArrayList;

import org.kh.saramout.mscrape.model.vo.MScrape;

public interface MScrapeService {

	void insertScrape(MScrape mScrape);

	void deleteScrape(MScrape mScrape);

	MScrape selectScrape(MScrape mScrape);

	ArrayList<MScrape> selectScrapeList(String mscrape_userid);

	int selectMScrapeCnt(String mscrape_userid);
	

}

