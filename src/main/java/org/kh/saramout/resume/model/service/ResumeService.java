package org.kh.saramout.resume.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.kh.saramout.resume.model.vo.Resume;
import org.springframework.web.servlet.ModelAndView;

public interface ResumeService {

	ArrayList<Resume> selectList(String userid);
	/*Resume selectResume(int );*/
	Resume selectResume(int resume_no);
	int insertResume(Resume resume);
	int updateResume(Resume resume);
	int deleteResume(int resume_no);
	//5월24일두줄
	ArrayList<Resume> selectFindTalentList(Map<String, Integer> parameters);
	int selectFindTalentCnt();
}
