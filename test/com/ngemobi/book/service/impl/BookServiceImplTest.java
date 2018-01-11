package com.ngemobi.book.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ngemobi.book.bean.Book;
import com.ngemobi.book.service.BookService;

public class BookServiceImplTest {
	ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext-*.xml");

	@Test
	public void testGetPaginatedChapters() {
		BookService bookService = (BookService) ac.getBean("bookServiceImpl");
		List<Book> list = bookService.getPaginatedChapters(10, 1);
		for (Book book : list) {
			System.out.println(book);
		}
	}
	
	
	@Test
	public void getChaptersNum(){
		BookService bookService = (BookService) ac.getBean("bookServiceImpl");
		int sum = bookService.getChaptersNum();
		System.out.println(sum);
	}
	@Test
	public void testGetBookContent() {
		Book book = new Book();
		book.setId(3);
		book.setIsCharge("");
		BookService bookService = (BookService) ac.getBean("bookServiceImpl");
		String s =bookService.getBookContent(book);
		System.out.println(s);
	}
	
}
