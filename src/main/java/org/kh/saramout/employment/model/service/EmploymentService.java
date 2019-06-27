package org.kh.saramout.employment.model.service;

import java.util.ArrayList;

import org.kh.saramout.employment.model.vo.Employment;

public interface EmploymentService {

	int insertEmployment(Employment employment);

	int updateEmployment(Employment employment);

	int deleteEmployment(int recruit_num);

	ArrayList<Employment> selectList(Employment employment);

	ArrayList<Employment> selectAllList(Employment employment);
	
	Employment selectEmployment(int recruit_num);

	public void addMapply(Employment employment);

	public void addFapply(Employment employment);
	
	

}
