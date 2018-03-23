package com.pmp.platformServer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pmp.entity.UserOrgEntity;
import com.pmp.platformServer.service.UserOrgService;

@Controller
@RequestMapping("/user")
public class UserOrgController {
	
	
	@Autowired
	private UserOrgService userOrgService ;
	
	@RequestMapping("/userList")
	public ModelAndView userList(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,String username ,Integer status,Integer roleId){
		List<UserOrgEntity> list =  userOrgService.findUserOrg(username, status,roleId);
		model.addObject("userOrgList", list);
		model.setViewName("system/userList");	
		return model;
	}

	/**
	 * 
	 * 方法用途: 新增用户<br>
	 * 操作步骤: TODO<br>
	 * @param request
	 * @param response
	 * @param model
	 * @param entity
	 * @return
	 */
	@RequestMapping("/userAdd")
	public String userAdd(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,UserOrgEntity entity){
		userOrgService.addUserOrg(entity);
		//model.addObject("messages", "新增成功");
		//model.setViewName("system/userList");	
		return  "redirect:/user/userList";
	}
	
	/**
	 * 
	 * 方法用途: 进入查看界面<br>
	 * 操作步骤: TODO<br>
	 * @param request
	 * @param response
	 * @param model
	 * @param userOrgId
	 * @return
	 */
	@RequestMapping("/userView")
	public ModelAndView userView(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer userOrgId){
		UserOrgEntity entity = userOrgService.getUserOrgById(userOrgId);
		model.addObject("userOrgEntity", entity);
		model.setViewName("system/userView");	
		return  model;
	}
	
	
	/**
	 * 
	 * 方法用途: 进入编辑界面<br>
	 * 操作步骤: TODO<br>
	 * @param request
	 * @param response
	 * @param model
	 * @param userOrgId
	 * @return
	 */
	@RequestMapping("/userEdit")
	public ModelAndView userEdit(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer userOrgId){
		UserOrgEntity entity = userOrgService.getUserOrgById(userOrgId);
		model.addObject("userOrgEntity", entity);
		model.setViewName("system/userEdit");
		return  model;
	}
	
	
	/**
	 * 
	 * 方法用途: 保存修改用户信息<br>
	 * 操作步骤: TODO<br>
	 * @param request
	 * @param response
	 * @param model
	 * @param entity
	 * @return
	 */
	@RequestMapping("/userSava")
	public String userSava(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,UserOrgEntity entity){
		userOrgService.userSava(entity);
		return  "redirect:/user/userList";
	}
	
	/**
	 * 
	 * 方法用途: 删除用户<br>
	 * 操作步骤: TODO<br>
	 * @param request
	 * @param response
	 * @param model
	 * @param userOrgId
	 * @return
	 */
	@RequestMapping("/userDel")
	public String userDel(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer userOrgId){
		userOrgService.delUserOrg(userOrgId);
		model.addObject("messages", "删除成功");
		return  "redirect:/user/userList";
	}
	
	
	/**
	 * 
	 * 方法用途: 变更用户状态<br>
	 * 操作步骤: TODO<br>
	 * @param request
	 * @param response
	 * @param model
	 * @param userOrgId
	 * @return
	 */
	@RequestMapping("/updateStatus")
	public String updateStatus(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer userOrgId){
		userOrgService.updateStatus(userOrgId);
		model.addObject("messages", "封锁成功");
		return  "redirect:/user/userList";
	}
	
	
	
}
