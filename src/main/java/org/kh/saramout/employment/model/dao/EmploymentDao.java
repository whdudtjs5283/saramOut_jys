package org.kh.saramout.employment.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.saramout.employment.model.vo.Employment;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("employmentDao")
public class EmploymentDao {

	public int insertEmployment(SqlSessionTemplate session, Employment employment) {
		return session.insert("employmentMapper.insertEmployment", employment);
	}

	public int updateEmployment(SqlSessionTemplate session, Employment employment) {
		return session.update("employmentMapper.updateEmployment", employment);
	}

	public int deleteEmployment(SqlSessionTemplate session, int recruit_num) {	
		return session.delete("employmentMapper.deleteEmployment", recruit_num);
	}

	public List<Employment> selectList(SqlSessionTemplate session, Employment employment) {
		return session.selectList("employmentMapper.selectEmploymentList", employment);
	}

	public List<Employment> selectAllList(SqlSessionTemplate session, Employment employment) {
		return session.selectList("employmentMapper.selectAllEmploymentList", employment);
	}
	
	public Employment selectEmployment(SqlSessionTemplate session, int recruit_num) {
	      return  session.selectOne("employmentMapper.selectEmploymentDetail", recruit_num);
	   }

	public int addMapply(SqlSessionTemplate session, Employment employment) {
		
		return session.update("employmentMapper.updateMapply",  employment);
		
	}
	
	public int addFapply(SqlSessionTemplate session, Employment employment) {
		
		return session.update("employmentMapper.updateFapply",  employment);
		
	}
	
	/*public int updateMember(SqlSessionTemplate session, Member member) {
		return session.update("memberMapper.updateMember", member);
	}*/

	
}
