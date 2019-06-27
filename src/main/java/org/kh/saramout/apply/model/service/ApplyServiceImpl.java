package org.kh.saramout.apply.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.kh.saramout.apply.model.dao.ApplyDao;
import org.kh.saramout.apply.model.vo.Apply;
import org.kh.saramout.resume.model.vo.Resume;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("applyService")
public class ApplyServiceImpl implements ApplyService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private ApplyDao applyDao;
	
	@Override
	public int insertApply(Apply apply) {
		return applyDao.insertApply(mybatisSession, apply) ;
	}

	@Override
	public ArrayList<Apply> selectList(String bid) {
		return (ArrayList<Apply>) applyDao.selectEApplyList(mybatisSession, bid);
	}
	
	//5월24일추가
	  @Override
	   public ArrayList<Apply> selectMemberList(Map<String, Object> parameters) {
	      return (ArrayList<Apply>)applyDao.selectMApplyList(mybatisSession, parameters);
	   }

	@Override
	public int selectApplyCnt (String apply_userid) {
		return applyDao.selectApplyCnt(mybatisSession, apply_userid);
	}
	

}
