package com.pmp.platformServer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pmp.entity.UserInfoEntity;
import com.pmp.platformServer.dto.VipLevelSelectDto;
import com.pmp.platformServer.service.UserInfoService;
import com.pmp.platformServer.service.UtilService;

@Controller
@RequestMapping("/userInfo")
public class UserInfoController {
	
	@Autowired
	private UserInfoService userInfoService;
	
	@Autowired
	private UtilService utilService;
	
	@RequestMapping("/userInfoList")
	public ModelAndView vipUserList(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,UserInfoEntity entity){
		List<UserInfoEntity> list = userInfoService.findUserInfo(entity);
		List<VipLevelSelectDto> vipLevelSelectDto = utilService.getVipLevelSelect();
		model.addObject("userInfoEntity", list);
		model.addObject("vipLevelSelect", vipLevelSelectDto);
		model.setViewName("vipuser/vipUserList");	
		return model;
	}
	
	
	@RequestMapping("/userInfoEdit")
	public ModelAndView userInfoEdit(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer userInfoId){
		UserInfoEntity entity = userInfoService.getUserInfoById(userInfoId);
		model.addObject("userInfoEntity", entity);
		model.setViewName("vipuser/userInfoEdit");	
		return model;
	}
	
	
	@RequestMapping("/userInfoUpdate")
	public String userInfoUpdate(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,UserInfoEntity entity){
		userInfoService.updateUserInfo(entity);
		return  "redirect:/userInfo/userInfoList";
	} 
	
	@RequestMapping("/updateStatus")
	public String updateStatus(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer userInfoId){
		userInfoService.updateStatus(userInfoId);	
		return  "redirect:/userInfo/userInfoList";
	} 

}
