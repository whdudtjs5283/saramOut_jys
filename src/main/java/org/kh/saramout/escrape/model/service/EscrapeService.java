package org.kh.saramout.escrape.model.service;

import org.kh.saramout.escrape.model.vo.EScrape;

public interface EscrapeService {

	void insertScrape(EScrape eScrape);

	void deleteScrape(EScrape eScrape);

	void updateScrape(EScrape eScrape);

	EScrape selectService(EScrape eScrape);

}
