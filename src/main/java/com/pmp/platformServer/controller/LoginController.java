package com.pmp.platformServer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pmp.entity.UserOrgEntity;
import com.pmp.platformServer.service.UserOrgService;

@Controller
@RequestMapping("/init")
public class LoginController {
	
	@Autowired
	private UserOrgService userOrgService ;
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request ,HttpServletResponse response,String username,String password, ModelAndView model){
		if(null==username||username.equals("")){
			model.addObject("message", "用户名不能为空！");
			model.setViewName("login");	
			return model;
		}
		if(null==password||password.equals("")){
			model.addObject("messages", "密码不能为空！");
			model.setViewName("login");	
			return model;
		}
		
		UserOrgEntity entity = userOrgService.getUserOrg(username, password);
		
		if(null==entity){
			model.setViewName("login");	
		}else{
			model.setViewName("index");
		}
		
		return model;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request ,HttpServletResponse response,String username,String password, ModelAndView model){
		
		model.setViewName("login");	
		return model;
	}

	
	
	
}
