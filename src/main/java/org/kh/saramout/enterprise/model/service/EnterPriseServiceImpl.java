package org.kh.saramout.enterprise.model.service;

import org.kh.saramout.enterprise.model.dao.EnterPriseDao;
import org.kh.saramout.enterprise.model.vo.EnterPrise;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("enterpriseService")
public class EnterPriseServiceImpl implements EnterPriseService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private EnterPriseDao enterpriseDao; 
	
	@Override
	public int insertEnterPrise(EnterPrise enterprise) {
		
		return enterpriseDao.insertEnterPrise(mybatisSession, enterprise);
	}
	
	@Override
	public EnterPrise selectLogin(EnterPrise enterprise) {
		
		return enterpriseDao.selectEnterPrise(mybatisSession, enterprise);
	}

}
