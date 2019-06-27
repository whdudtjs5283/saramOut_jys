package org.kh.saramout.apply.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.kh.saramout.apply.model.vo.Apply;
import org.kh.saramout.resume.model.vo.Resume;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("ApplyDao")
public class ApplyDao {

	public int insertApply(SqlSessionTemplate session, Apply apply) {
		return session.insert("applyMapper.insertApply", apply);
	}

	public List<Apply> selectEApplyList(SqlSessionTemplate session, String bid) {
		return session.selectList("applyMapper.selectEApplyList", bid);
	}
	
	//5월24일
	
	 public List<Apply> selectMApplyList(SqlSessionTemplate session, Map<String, Object> parameters) {
	      return session.selectList("applyMapper.selectMApplyList", parameters);
	   }

	public int selectApplyCnt(SqlSessionTemplate session, String apply_userid) {
		return session.selectOne("applyMapper.selectApplyCnt", apply_userid);
	}
	
	

}
