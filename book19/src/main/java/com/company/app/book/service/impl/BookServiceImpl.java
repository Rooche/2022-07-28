package com.company.app.book.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.app.book.mapper.BookMapper;
import com.company.app.book.service.BookDTO;
import com.company.app.book.service.BookService;
import com.company.app.book.service.BookVO;

@Service
public class BookServiceImpl implements BookService{

	@Autowired
	BookMapper mapper;

	@Override
	public List<BookVO> bookSelectList() {
		return mapper.bookSelectList();
	}
	
	@Override
	public int bookSelectListCount() {
		return mapper.bookSelectListCount();
	}
	
	@Override
	public void bookInsert(BookVO vo) {
		mapper.bookInsert(vo);
	}

	@Override
	public BookVO imgCheck(BookVO vo) {
		return mapper.imgCheck(vo);
	}

	@Override
	public List<BookDTO> rentalSelectList() {
		return mapper.rentalSelectList();
	}

	


}
