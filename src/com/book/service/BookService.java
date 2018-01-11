package com.book.service;

import java.util.List;

import com.book.bean.Book;

public interface BookService {
	/**
	 * 章节内容
	 * 
	 * @param chapternum
	 * @return
	 */
	public String getBookContent(Book book);

	/**
	 * 章节名称
	 * @return
	 */
	public List<Book> getPaginatedChapters(int rows ,int page);
	
	/**
	 * 全部章节数目
	 * @return
	 */
	public int  getChaptersNum();

}
