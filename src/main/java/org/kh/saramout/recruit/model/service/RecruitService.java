package org.kh.saramout.recruit.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.kh.saramout.recruit.model.vo.Recruit;

public interface RecruitService {
	
	int insertRecruit(Recruit recruit);
	ArrayList<Recruit> selectRecruitAll();
	Recruit selectOneRecruit(String joregistno);
	//페이징 갯수세기
	int AllRecruitCount();
	List<Recruit> selectRecruitList(Map<String, Integer> parameters);
	//직종으로 검색해서 리턴받기
	List<Recruit> jobSearch(String[] jobSearch2);

}
