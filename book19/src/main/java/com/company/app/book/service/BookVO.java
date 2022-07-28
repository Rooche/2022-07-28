package com.company.app.book.service;

import java.sql.Date;

import lombok.Data;

@Data
public class BookVO {
	private int bookNo;
	private String bookName;
	private String bookCoverimg;
	private Date bookDate;
	private int bookPrice;
	private String bookPublisher;
	private String bookInfo;
}
