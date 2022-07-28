package com.company.app.book.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.app.book.service.BookService;
import com.company.app.book.service.BookVO;


@Controller
public class BookController {
	
	@Autowired
	BookService service;
	
	@RequestMapping("/bookSelectList")
	public String bookSelectList(Model model) {
		model.addAttribute("list", service.bookSelectList());
		return "book/bookSelectList";
	}
	
	@RequestMapping("/bookInsertForm")
	public String bookInsertFrom(Model model) {
		int count = service.bookSelectListCount();
		
		model.addAttribute("bno", count+1);
		
		return "book/bookInsertForm";
	}
	
	@RequestMapping(value="/bookInsert", method = RequestMethod.POST)
	public String bookInsert(BookVO vo) {
		service.bookInsert(vo);
		return "redirect:bookSelectList";
	}
	
	@RequestMapping("/imgCheck")
	@ResponseBody
	public BookVO imgCheck(BookVO vo) {
		vo = service.imgCheck(vo);
		
		return vo;
	}
	
	@RequestMapping("/bookRental")
	public String bookRental(Model model) {
		model.addAttribute("list", service.rentalSelectList());
		return "book/bookRental";
	}
}
