package com.cn.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cn.biz.TblUsersBiz;
import com.cn.entity.TblUsers;

@Controller
@RequestMapping("/user")
public class TblUsersController {

	@Autowired
	private TblUsersBiz tblUsersBiz;
	
	@RequestMapping("/register")
	public ModelAndView register(TblUsers tblUsers){
		boolean flag = tblUsersBiz.register(tblUsers);
		
		ModelAndView modelAndView = new ModelAndView();
		
		if(flag){
			modelAndView.setViewName("redirect:../register_success.jsp");
		}else{
			modelAndView.addObject("errMsg", "×¢²áÊ§°Ü");
			modelAndView.setViewName("../register");
		}
		return modelAndView;
		}
}
