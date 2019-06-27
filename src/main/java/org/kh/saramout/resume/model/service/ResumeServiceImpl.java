package org.kh.saramout.resume.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.kh.saramout.resume.model.dao.ResumeDao;
import org.kh.saramout.resume.model.vo.Resume;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private ResumeDao resumeDao;

	/*@Override
	public Resume selectResume(int resume_no) {
		return resumeDao.selectResume(mybatisSession, resume_no);
	}*/

	@Override
	public Resume selectResume(int resume_no) {
		return resumeDao.selectResume(mybatisSession, resume_no);
	}
	
	@Override
	public int insertResume(Resume resume) {
		System.out.println("이력서 등록 서비스impl : " + resume);
		return resumeDao.insertResume(mybatisSession, resume);
	}

	@Override
	public int updateResume(Resume resume) {
		System.out.println("업데이트 서비스 impl : " + resume.toString());
		return resumeDao.updateResume(mybatisSession, resume);
	}

	@Override
	public int deleteResume(int resume_no) {
		return resumeDao.deleteResume(mybatisSession, resume_no);
	}

	@Override
	public ArrayList<Resume> selectList(String userid) {
		return (ArrayList<Resume>) resumeDao.selectList(mybatisSession, userid);
	}
	
	//5월24일
	
	@Override
	public ArrayList<Resume> selectFindTalentList(Map<String, Integer> parameters) {
		return (ArrayList<Resume>) resumeDao.selectFindTalentList(mybatisSession, parameters);
	}

	@Override
	public int selectFindTalentCnt() {
		return resumeDao.selectFindTalentCnt(mybatisSession);
	}


}
