package com.naver.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReserveController {
	
	
	
	@RequestMapping( value="/reserveForm.do")
	public ModelAndView reserveForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("reserveForm.jsp");
		return mav;
		
	}
	
	@RequestMapping( value="/reserveDetail.do")
	public ModelAndView reserveDetail() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("reserveDetail.jsp");
		return mav;
		
	}
	
	
}
