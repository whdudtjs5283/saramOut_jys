package org.kh.saramout.resume.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.kh.saramout.resume.model.vo.Resume;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

@Repository("resumeDao")
public class ResumeDao {

	/*public Resume selectResume(SqlSessionTemplate session, int resume_no) {
		return session.selectOne("resumeMapper.selectResume", resume_no);
	}*/
	
	public Resume selectResume(SqlSessionTemplate session, int resume_no) {
		return session.selectOne("resumeMapper.selectResume", resume_no);
	}

	public int insertResume(SqlSessionTemplate session, Resume resume) {
		System.out.println("이력서 등록 dao : " + resume);
		return session.insert("resumeMapper.insertResume", resume);
	}

	public int updateResume(SqlSessionTemplate session, Resume resume) {
		System.out.println("업데이트DAO : " + resume.toString());
		return session.update("resumeMapper.updateResume", resume);
	}

	public int deleteResume(SqlSessionTemplate session, int resume_no) {
		return session.delete("resumeMapper.deleteResume", resume_no);
	}

	public List<Resume> selectList(SqlSessionTemplate session, String userid) {
		return session.selectList("resumeMapper.selectResumeList", userid);
	}
	
	//5월24일
	
	public List<Resume> selectFindTalentList(SqlSessionTemplate session, Map<String, Integer> parameters) {
		return session.selectList("resumeMapper.selectFindTalentList", parameters);
	}

	public int selectFindTalentCnt(SqlSessionTemplate session) {
		return session.selectOne("resumeMapper.selectFindTalentCnt");
	}
	
}






















