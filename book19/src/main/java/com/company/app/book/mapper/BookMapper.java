package com.company.app.book.mapper;

import java.util.List;

import com.company.app.book.service.BookDTO;
import com.company.app.book.service.BookVO;

public interface BookMapper {

	public List<BookVO> bookSelectList();

	public int bookSelectListCount();

	public void bookInsert(BookVO vo);

	public BookVO imgCheck(BookVO vo);

	public List<BookDTO> rentalSelectList();

}
