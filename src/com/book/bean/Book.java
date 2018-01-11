package com.book.bean;

public class Book {
	/**
	 * 书籍编号
	 */
	private int id;
	/**
	 * 章节目录
	 */
	private String chapter;
	/**
	 * 内容
	 */
	private String content;
	/**
	 * 原价
	 */
	private String oldPrice;
	/**
	 * 现价
	 */
	private String nowPrice;
	
	
	private String isCharge;
	

	
	public Book() {
		super();
	}



	public Book(int id, String chapter, String content, String oldPrice, String nowPrice, String isCharge) {
		super();
		this.id = id;
		this.chapter = chapter;
		this.content = content;
		this.oldPrice = oldPrice;
		this.nowPrice = nowPrice;
		this.isCharge = isCharge;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getChapter() {
		return chapter;
	}



	public void setChapter(String chapter) {
		this.chapter = chapter;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getOldPrice() {
		return oldPrice;
	}



	public void setOlfPrice(String oldPrice) {
		this.oldPrice = oldPrice;
	}



	public String getNowPrice() {
		return nowPrice;
	}



	public void setNowPrice(String nowPrice) {
		this.nowPrice = nowPrice;
	}



	public String getIsCharge() {
		return isCharge;
	}



	public void setIsCharge(String isCharge) {
		this.isCharge = isCharge;
	}



	@Override
	public String toString() {
		return "Book [id=" + id + ", chapter=" + chapter + ", content=" + content + ", oldPrice=" + oldPrice
				+ ", nowPrice=" + nowPrice + ", isCharge=" + isCharge + "]";
	}
}
