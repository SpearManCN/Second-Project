package com.naver.erp;

import java.util.Map;

public interface LoginDAO {
	
	
	
	public int getMemNo(String email);
	public int getIsCorrect(Map memInfo);
	public int insertSignUp(Map memInfo);
	
	
}
