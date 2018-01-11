package com.book.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.book.bean.Book;
import com.book.service.BookService;
import com.book.utils.PagerUtil;

@Controller
@RequestMapping("/")
public class BookController {

	@Autowired
	private BookService bookService;

	/**
	 * 章节内容
	 * 
	 * @param chapternum
	 * @return
	 */
	@RequestMapping(value = "content")
	@ResponseBody
	public Map<String, String> getBookChapterContent(Book book) {
		Map<String, String>map=new HashMap<String, String>();
		String content=bookService.getBookContent(book);
		map.put("text",content);
		return map;
	}

	
	/**
	 * 分页方法
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping("/chapter")
	public String getAllWin(String page,Model model){
		PagerUtil pager=new PagerUtil();
		int totalRows=bookService.getChaptersNum();
		pager.setTotalRows(totalRows);
		if(null!=page){
			int p=Integer.parseInt(page);
			//解决上一页和下一页的无尽头的问题
			if(p>pager.getTotalPage()){
				p=pager.getTotalPage();
				pager.setCurrenPage(p);
			}else{
				pager.setCurrenPage(p);
			}
		}else{
			pager.setCurrenPage(1);
		}
		List<Book>books=bookService.getPaginatedChapters(pager.getStartRow(),pager.getPageSize());
		System.out.println(books);
		model.addAttribute("pager", pager);
		model.addAttribute("result", books);
		return "jsp/book";
	}
	
}
