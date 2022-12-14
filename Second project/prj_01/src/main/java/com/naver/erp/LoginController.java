package com.naver.erp;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@Autowired
	private LoginDAO loginDAO;
	
	
	
	@RequestMapping( value="/loginForm.do")
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("loginForm.jsp");
		return mav;
		
	}
	@RequestMapping( value="/loginJoinForm.do")
	public ModelAndView loginJoinForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("loginJoinForm.jsp");
		return mav;
		
	}
	
	
	
	
	
	@RequestMapping( 
			value="/loginProc.do" 
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
	)
	@ResponseBody
	public int loginProc(
			@RequestParam( value="email" ) String email
			,@RequestParam( value="pw" ) String pw
			,HttpSession session
	) {
		Map memInfo = new HashMap();
		memInfo.put("email",email);
		memInfo.put("pw",pw);
		int isCorrect = loginDAO.getIsCorrect(memInfo);
		
		if(isCorrect==1) {
			int memNo =  loginDAO.getMemNo(email);
			session.setAttribute("memNo", memNo);
		}
		
		//System.out.print(session.getAttribute("memNo"));
		
		
		
		return isCorrect;
	}
	
	
	@RequestMapping( value="/logout.do")
	public ModelAndView logoutProc(
			HttpSession session
			) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		
		mav.setViewName("mainForm.jsp");
		return mav;
		
	}
	

	@RequestMapping( 
			value="/signUp.do" 
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
	)
	@ResponseBody
	public int signUp(
			@RequestParam( value="email" ) String email
			,@RequestParam( value="pw" ) String pw
			,@RequestParam( value="name" ) String name
			,@RequestParam( value="add" ) String add
			,@RequestParam( value="birth" ) String birth
			,@RequestParam( value="phone" ) String phone
			,HttpSession session
	) {
		Map memInfo = new HashMap();
		memInfo.put("email", email);
		memInfo.put("pw", pw);
		memInfo.put("name", name);
		memInfo.put("add", add);
		memInfo.put("birth", birth);
		memInfo.put("phone", phone);
		
		int successCnt = loginDAO.insertSignUp(memInfo);
		
		
		
		return successCnt;
	}	
	
	
	
	
}
