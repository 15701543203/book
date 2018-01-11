package com.book.mapper;

import java.util.List;
import java.util.Map;

import com.book.bean.Book;

public interface BookMapper {
	/**
	 * 书的章节内容
	 * @param chaoterNum
	 * @return
	 */
	String selectBookContent(Book book);
	
	/**
	 * 
	 * @param params map集合需要包含两个key,一个是size查几条,一个delta从哪里开始
	 * @return
	 */
	List<Book> selectPaginatedChapters(Map<String, Integer> params);
	
	/**
	 * 查询一共有多少章节
	 * @return
	 */
	int selectChaptersSum();
}
