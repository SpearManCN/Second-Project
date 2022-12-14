package com.naver.erp;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAOImpl implements LoginDAO{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getMemNo(String email) {
		int MemNo = this.sqlSession.selectOne(
				"com.naver.erp.LoginDAO.getMemNo"
				,email
				);
		
		return MemNo;
	}
	
	
	
	public int getIsCorrect(Map memInfo) {
		int IsCorrect = this.sqlSession.selectOne(
				"com.naver.erp.LoginDAO.getIsCorrect"
				,memInfo
				);
		return IsCorrect;
		
	}
	
	
	
	public int insertSignUp(Map memInfo) {
		int SignUp = this.sqlSession.insert(
				"com.naver.erp.LoginDAO.insertSignUp"
				,memInfo
				);
		return SignUp;
		
		
	}
}
