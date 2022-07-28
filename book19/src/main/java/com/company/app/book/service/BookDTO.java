package com.company.app.book.service;

import lombok.Data;

@Data
public class BookDTO {
	private int bookNo;
	private String bookName;
	private int rentPrice;
	private int rentalCount;
}
