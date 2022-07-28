package com.company.app.book.service;

import java.util.List;

public interface BookService {
	
	public List<BookVO> bookSelectList();

	public int bookSelectListCount();

	public void bookInsert(BookVO vo);

	public BookVO imgCheck(BookVO vo);

	public List<BookDTO> rentalSelectList();



}
