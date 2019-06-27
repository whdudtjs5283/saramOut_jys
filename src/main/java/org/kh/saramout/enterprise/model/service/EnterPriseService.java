package org.kh.saramout.enterprise.model.service;

import org.kh.saramout.enterprise.model.vo.EnterPrise;


public interface EnterPriseService {
	
	int insertEnterPrise(EnterPrise enterprise);
	
	EnterPrise selectLogin(EnterPrise enterprise);

}
