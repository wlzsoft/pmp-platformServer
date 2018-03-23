package com.pmp.platformServer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pmp.platformServer.dto.SubBookListDto;
import com.pmp.platformServer.dto.VipLevelSelectDto;
import com.pmp.platformServer.service.SubBookService;
import com.pmp.platformServer.service.UtilService;

@Controller
@RequestMapping("/subBook")
public class SubBookController {
	
	@Autowired
	private SubBookService subBookService;

	@Autowired
	private UtilService utilService;
	
	@RequestMapping("/subBookList")
	public ModelAndView subBookList(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,SubBookListDto entity){
		List<SubBookListDto> list = subBookService.findSubBook(entity);
		List<VipLevelSelectDto> vipLevelSelectDto = utilService.getVipLevelSelect();
		model.addObject("vipLevelSelect", vipLevelSelectDto);
		model.addObject("subBookList", list);
		model.setViewName("subbook/subBookList");	
		return model;	
	}
	
	public String updateSubStatus(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer subStatus){
		subBookService.updateSubStatus(subStatus);
		return  "redirect:/subBook/subBookList";	
	}

}
