package com.pmp.platformServer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pmp.platformServer.dto.BookBranchDto;
import com.pmp.platformServer.dto.BookClassSelectDto;
import com.pmp.platformServer.dto.BookListDto;
import com.pmp.platformServer.dto.BookPriceDto;
import com.pmp.platformServer.service.BookService;
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
@RequestMapping("book")
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	@Autowired	
	private UtilService utilService;

	@RequestMapping("/bookList")
	public ModelAndView bookList(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,BookListDto dto){
		List<BookListDto> list = bookService.findBookList(dto);
		List<BookClassSelectDto> bookClassDto = utilService.getBookClassSelect();
		model.addObject("bookClassSelect", bookClassDto);
		model.addObject("bookList", list);
		model.setViewName("book/bookList");	
		return model;
	}
	
	
	@RequestMapping("/bookPrice")
	public ModelAndView bookView(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer bookId){
		List<BookPriceDto> bookPriceList = bookService.getBookPrice(bookId);
		model.addObject("bookPrice", bookPriceList);
		model.setViewName("book/bookPrice");	
		return model;
	}
	
	@RequestMapping("/bookVer")
	public ModelAndView bookVer(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer bookId){
		List<BookBranchDto> bookVerList = bookService.getBookVer(bookId);
		model.addObject("bookVerList", bookVerList);
		model.setViewName("book/bookVer");	
		return model;
	}
	
	@RequestMapping("/auditor")
	public ModelAndView auditor(HttpServletRequest request ,HttpServletResponse response, ModelAndView model,Integer id,Integer status,Integer bookId){
		bookService.auditor(id,status);
		List<BookBranchDto> bookVerList = bookService.getBookVer(bookId);
		model.addObject("bookVerList", bookVerList);
		model.setViewName("book/bookVer");
		return model;
	}
	
	
	
	
}
