package org.kh.saramout.enterprise.model.dao;

import org.kh.saramout.enterprise.model.vo.EnterPrise;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("EnterPriseDao")
public class EnterPriseDao {
	
	public int insertEnterPrise(SqlSessionTemplate session, EnterPrise enterprise) {
		return session.insert("enterpriseMapper.insertEnterPrise", enterprise);
	}
	
	public EnterPrise selectEnterPrise(SqlSessionTemplate session, EnterPrise enterprise) {
		return session.selectOne("enterpriseMapper.selectLogin", enterprise);
		
	}
	
	

}
