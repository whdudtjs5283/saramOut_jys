package org.kh.saramout.companyinfo.model.service;

import java.util.ArrayList;

import org.kh.saramout.companyinfo.model.dao.CompanyInfoDao;
import org.kh.saramout.companyinfo.model.vo.CompanyInfo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("companyInfoService")
public class CompanyInfoServiceImpl implements CompanyInfoService {
	// 마이바티스 연동 객체 선언
	@Autowired
	private SqlSessionTemplate mybatisSession;

	@Autowired
	private CompanyInfoDao companyInfoDao;

	@Override
	public int insertCompanyInfo(CompanyInfo companyInfo) {
		return companyInfoDao.insertCompanyInfo(mybatisSession, companyInfo);
	}

	@Override
	public int updateCompanyInfo(CompanyInfo companyInfo) {
		return companyInfoDao.updateCompanyInfo(mybatisSession, companyInfo);
	}

	@Override
	public CompanyInfo selectCompanyInfo(String bid) {		
		return companyInfoDao.selectCompanyInfo(mybatisSession, bid);
	}
	
	@Override
	public ArrayList<CompanyInfo> selectAllList(CompanyInfo companyInfo) {
		  return (ArrayList<CompanyInfo>) CompanyInfoDao.selectAllList(mybatisSession, companyInfo);
	}

}
