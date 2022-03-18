package com.board.dto;

import org.apache.ibatis.type.Alias;

@Alias("board")
public class BoardDTO {
	private int b_no;
	private String b_title;
	private String b_content;
	private String id;
	private String b_date;
	private int b_view;
	private int b_like;
	private int r1;
	public BoardDTO() {
	}
	public BoardDTO(int b_no, String b_title, String b_content, String id, String b_date, int b_view, int b_like,
			int r1) {
		super();
		this.b_no = b_no;
		this.b_title = b_title;
		this.b_content = b_content;
		this.id = id;
		this.b_date = b_date;
		this.b_view = b_view;
		this.b_like = b_like;
		this.r1 = r1;
	}
	
	public BoardDTO(String b_title, String b_content, String id) {
		this.b_title = b_title;
		this.id = id;
		this.b_content = b_content;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public int getb_view() {
		return b_view;
	}
	public void setb_view(int b_view) {
		this.b_view = b_view;
	}
	public int getB_like() {
		return b_like;
	}
	public void setB_like(int b_like) {
		this.b_like = b_like;
	}
	public int getR1() {
		return r1;
	}
	public void setR1(int r1) {
		this.r1 = r1;
	}
	
	
}
