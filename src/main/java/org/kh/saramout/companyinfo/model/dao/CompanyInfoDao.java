package org.kh.saramout.companyinfo.model.dao;

import java.util.List;

import org.kh.saramout.companyinfo.model.vo.CompanyInfo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("companyInfoDao")
public class CompanyInfoDao {

	public int insertCompanyInfo(SqlSessionTemplate session, CompanyInfo companyInfo) {
		return session.insert("companyInfoMapper.insertCompanyInfo", companyInfo);
	}

	public int updateCompanyInfo(SqlSessionTemplate session, CompanyInfo companyInfo) {
		return session.update("companyInfoMapper.updateCompanyInfo", companyInfo);
	}

	public CompanyInfo selectCompanyInfo(SqlSessionTemplate session, String bid) {
		return session.selectOne("companyInfoMapper.selectCompanyInfo", bid);
	}

	public static List<CompanyInfo> selectAllList(SqlSessionTemplate session, CompanyInfo companyInfo) {
		return session.selectList("companyInfoMapper.selectList", companyInfo);

	}

}
