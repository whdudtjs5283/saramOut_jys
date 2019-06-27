package org.kh.saramout.employment.model.service;

import java.util.ArrayList;

import org.kh.saramout.employment.model.dao.EmploymentDao;
import org.kh.saramout.employment.model.vo.Employment;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("employmentService")
public  class EmploymentServiceImpl implements EmploymentService{

	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private EmploymentDao employmentDao;

	@Override
	public int insertEmployment(Employment employment) {
		return employmentDao.insertEmployment(mybatisSession, employment);
	}
	
	@Override
	public int updateEmployment(Employment employment) {
		return employmentDao.updateEmployment(mybatisSession, employment);
	}
	
	@Override
	public int deleteEmployment(int recruit_num ) {
		return employmentDao.deleteEmployment(mybatisSession, recruit_num);
	}
	
	@Override
	public ArrayList<Employment> selectList(Employment employment){
		return (ArrayList<Employment>) employmentDao.selectList(mybatisSession, employment);
	}
	
	@Override
	public ArrayList<Employment> selectAllList(Employment employment){
		return (ArrayList<Employment>) employmentDao.selectAllList(mybatisSession, employment);
	}
	
	   @Override
	   public Employment selectEmployment(int recruit_num) {
	      return employmentDao.selectEmployment(mybatisSession, recruit_num);
	   }
	   
	   
	  @Override
	  public void addMapply(Employment employment) {

		  employmentDao.addMapply(mybatisSession, employment);
		  
		  
	  }
	  
	  @Override
	  public void addFapply(Employment employment) {

		  employmentDao.addFapply(mybatisSession, employment);
		  
		  
	  }
	   
}







