package org.kh.saramout.resumecheck.model.dao;

import java.util.List;
import java.util.Map;

import org.kh.saramout.resumecheck.model.vo.ResumeCheck;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("resumeCheckDao")
public class ResumeCheckDao {

	public int insertResumeCheck(SqlSessionTemplate session, ResumeCheck resumeCheck) {
		return session.insert("resumeCheckMapper.insertRC", resumeCheck);
	}

	public List<ResumeCheck> selectResumeCheckList(SqlSessionTemplate session,
			Map<String, Object> parameters) {
		return session.selectList("resumeCheckMapper.selectRCList", parameters);
	}

	public int selectResumeCheckListCnt(SqlSessionTemplate session, String rc_userid) {
		return session.selectOne("resumeCheckMapper.selectRCListCnt", rc_userid);
	}

	public int selectCheckCnt(SqlSessionTemplate session, String rc_userid) {
		return session.selectOne("resumeCheckMapper.selectCheckCnt", rc_userid);
	}

	public void updateCheck(SqlSessionTemplate session, String rc_userid) {
		session.update("resumeCheckMapper.updateCheck", rc_userid);
	}

}
