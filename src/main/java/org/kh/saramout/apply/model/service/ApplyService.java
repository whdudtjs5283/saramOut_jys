package org.kh.saramout.apply.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.kh.saramout.apply.model.vo.Apply;
import org.kh.saramout.resume.model.vo.Resume;

public interface ApplyService {

	int insertApply(Apply apply);
	
	ArrayList<Apply> selectList(String bid);
	
	ArrayList<Apply> selectMemberList(Map<String, Object> parameters);

	int selectApplyCnt(String apply_userid);

}
