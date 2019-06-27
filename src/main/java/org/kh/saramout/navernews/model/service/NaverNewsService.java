package org.kh.saramout.navernews.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.saramout.navernews.model.vo.NaverNews;

public interface NaverNewsService {
	
	int insertNaverNews(NaverNews naverNews);

	List<NaverNews> selectAllnews();

}
