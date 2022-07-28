package com.company.app.book.service;

import java.sql.Date;

import lombok.Data;

@Data
public class BookRentalVO {
	private int rentNo;
	private int bookNo;
	private int rentPrice;
	private Date rentDate;
	private String rentStatus;
}
