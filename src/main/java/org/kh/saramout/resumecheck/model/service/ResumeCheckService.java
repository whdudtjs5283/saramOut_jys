package org.kh.saramout.resumecheck.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.kh.saramout.resumecheck.model.vo.ResumeCheck;

public interface ResumeCheckService {

	int insertResumeCheck(ResumeCheck resumeCheck);

	ArrayList<ResumeCheck> selectResumeCheckList(Map<String, Object> parameters);

	int selectResumeCheckListCnt(String rc_userid);

	int selectCheckCnt(String rc_userid);

	void updateCheck(String rc_userid);

}
