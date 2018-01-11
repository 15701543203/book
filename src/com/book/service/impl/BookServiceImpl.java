package com.book.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.book.bean.Book;
import com.book.mapper.BookMapper;
import com.book.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookMapper bookMapper;

	/**
	 * 章节详细内容
	 */
	@Override
	public String getBookContent(Book book) {
		String book1 = bookMapper.selectBookContent(book);
		//System.out.println(book1);
		return book1;
	}

	/**
	 * 每页十条显示章节目录 rows几行 page 第几页
	 * 
	 */
	@Override
	public List<Book> getPaginatedChapters(int rows, int page) {
		Map<String, Integer> params = new HashMap<>();
		params.put("delta",rows );
		params.put("size",page );
		List<Book> chapters = bookMapper.selectPaginatedChapters(params);
		return chapters;
	}

	
	
	/**
	 * 章节总数
	 */
	@Override
	public int getChaptersNum() {
		// TODO Auto-generated method stub
		int sum = bookMapper.selectChaptersSum();
		return sum;
	}

}
