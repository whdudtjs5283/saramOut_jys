package org.kh.saramout.resumecheck.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.kh.saramout.resumecheck.model.dao.ResumeCheckDao;
import org.kh.saramout.resumecheck.model.vo.ResumeCheck;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ResumeCheckService")
public class ResumeCheckServiceImpl implements ResumeCheckService{

	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	ResumeCheckDao resumeCheckDao;
	
	@Override
	public int insertResumeCheck(ResumeCheck resumeCheck) {
		return resumeCheckDao.insertResumeCheck(mybatisSession, resumeCheck);
	}

	@Override
	public ArrayList<ResumeCheck> selectResumeCheckList(Map<String, Object> parameters) {
		return (ArrayList<ResumeCheck>) resumeCheckDao.selectResumeCheckList(mybatisSession, parameters);
	}

	@Override
	public int selectResumeCheckListCnt(String rc_userid) {
		return resumeCheckDao.selectResumeCheckListCnt(mybatisSession, rc_userid);
	}

	@Override
	public int selectCheckCnt(String rc_userid) {
		return resumeCheckDao.selectCheckCnt(mybatisSession, rc_userid);
	}

	@Override
	public void updateCheck(String rc_userid) {
		resumeCheckDao.updateCheck(mybatisSession, rc_userid);
	}

}
