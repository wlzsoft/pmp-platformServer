package com.pmp.platformServer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pmp.entity.BookClassEntity;
import com.pmp.platformServer.dto.BookClassSelectDto;
import com.pmp.platformServer.service.BookClassService;
import com.pmp.platformServer.service.UtilService;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Create Date:2018年3月14日 下午2:59:13</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月14日 下午2:59:13</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Controller
@RequestMapping("bookClass")
public class BookClassController {
	
	@Autowired
	private BookClassService bookClassService;
	
	@RequestMapping("/bookClassList")
	public ModelAndView bookClassList(HttpServletRequest request ,HttpServletResponse response, ModelAndView model ,BookClassEntity entity){
		List<BookClassEntity> list = bookClassService.findBookClass(entity);
		model.addObject("bookClassList", list);
		model.setViewName("bookclass/bookClassList");	
		return model;
	}
	
	@RequestMapping("/bookClassAdd")
	public String bookClassAdd(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,BookClassEntity entity){
		bookClassService.addBookClass(entity);
		return "redirect:/bookClass/bookClassList";
	}

	@RequestMapping("/bookClassView")
	public ModelAndView bookClassView(HttpServletRequest request ,HttpServletResponse response, ModelAndView model ,Integer bookClassId){
		BookClassEntity entity = bookClassService.getBookClassById(bookClassId);
		model.addObject("bookClassEntity", entity);
		model.setViewName("bookclass/bookClassView");	
		return model;
	}
	
	@RequestMapping("/bookClassDel")
	public String bookClassDel(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer bookClassId){
		bookClassService.bookClassDel(bookClassId);
		return  "redirect:/bookClass/bookClassList";	
	}
	
	@RequestMapping("/bookClassEdit")
	public ModelAndView bookClassEdit(HttpServletRequest request ,HttpServletResponse response, ModelAndView model ,Integer bookClassId){
		BookClassEntity entity = bookClassService.getBookClassById(bookClassId);
		model.addObject("bookClassEntity", entity);
		model.setViewName("bookclass/bookClassEdit");	
		return model;
	}
	
	@RequestMapping("/bookClassUpdate")
	public String bookClassUpdate(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,BookClassEntity entity){
		bookClassService.updateBookClass(entity);
		return  "redirect:/bookClass/bookClassList";
	}
	
	
}
