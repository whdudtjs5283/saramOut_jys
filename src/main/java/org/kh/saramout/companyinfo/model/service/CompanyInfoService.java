package org.kh.saramout.companyinfo.model.service;

import java.util.ArrayList;

import org.kh.saramout.companyinfo.model.vo.CompanyInfo;

public interface CompanyInfoService {
	int insertCompanyInfo(CompanyInfo companyInfo);
	int updateCompanyInfo(CompanyInfo companyInfo);
	CompanyInfo selectCompanyInfo(String bid);
	ArrayList<CompanyInfo> selectAllList(CompanyInfo companyInfo);
}