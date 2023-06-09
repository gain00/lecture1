package com.wjdwo1104.dto;

public class BoardDto {
	private int id;
	private String name;
	private String title;
	private String contents;
	private String regdate;
	private int hit;
	
	
	public BoardDto() {
		super();
	}



	public BoardDto(int id, String name, String title, String contents, String regdate, int hit) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.contents = contents;
		this.regdate = regdate;
		this.hit = hit;
	}



	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
}
