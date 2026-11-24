package com.equalon.model;

public class Notice {
	private int id;
	private String title;
	private String date;
	private int views;
	private String content;
	public Notice(int id, String title, String date, int views, String content) {
		this.id = id;
		this.title = title;
		this.date = date;
		this.views = views;
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
