package com.pmp.platformServer.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pmp.entity.VipLevelEntity;
import com.pmp.entity.VipLevelPriceEntity;
import com.pmp.platformServer.dto.VipLevelPriceDto;
import com.pmp.platformServer.service.VipLevelPriceService;
import com.pmp.platformServer.service.VipLevelService;

@Controller
@RequestMapping("/vip")
public class VipController {
	
	@Autowired
	private VipLevelService vipLevelService;
	
	@Autowired
	public VipLevelPriceService vipLevelPriceService;
	
	@RequestMapping("/vipList")
	public ModelAndView vipList(HttpServletRequest request ,HttpServletResponse response, ModelAndView model){
		List<VipLevelEntity> list = vipLevelService.findVipLevelList();
		model.addObject("vipLeveList", list);
		model.setViewName("vip/vipList");	
		return model;
	}
	
	@RequestMapping("/vipAdd")
	public String vipAdd(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,VipLevelEntity entity){
		vipLevelService.vipAdd(entity);
		return  "redirect:/vip/vipList";
	}
	
	@RequestMapping("/vipEdit")
	public ModelAndView vipEdit(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer vipLevelId){
		VipLevelEntity entity = vipLevelService.vipEdit(vipLevelId);
		model.addObject("entity", entity);
		model.setViewName("vip/vipEdit");	
		return  model;
	}
	
	@RequestMapping("/vipSava")
	public String vipSava(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,VipLevelEntity entity){
		entity.setUpdateId(1);
		entity.setUpdateTime(new Date());
		vipLevelService.vipSava(entity);
		return  "redirect:/vip/vipList";
	}
	
	@RequestMapping("/vipDel")
	public String vipDel(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer vipLevelId){
		vipLevelService.vipDel(vipLevelId);
		return  "redirect:/vip/vipList";
	}
	
	@RequestMapping("/vipPrice")
	public ModelAndView vippPrice(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer vipLevelId){
		List<VipLevelPriceDto> list = vipLevelService.findVipLevelPriceById(vipLevelId);
		model.addObject("vipLevelId", vipLevelId);
		model.addObject("vipPrice", list);
		model.setViewName("vip/vipPriceList");	
		return model;
	}
	
	
	@RequestMapping("/vipPriceAdd")
	public String vipPriceAdd(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,VipLevelPriceEntity entity){
		 vipLevelPriceService.vipPriceAdd(entity);
		return  "redirect:/vip/vipPrice?vipLevelId="+entity.getVipLevelId();
	}
	
	@RequestMapping("/vipPriceEdit")
	public String vipPriceEdit(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,VipLevelPriceEntity entity){
		 vipLevelPriceService.vipPriceAdd(entity);
		return  "redirect:/vip/vipPrice?vipLevelId="+entity.getVipLevelId();
	}

}
