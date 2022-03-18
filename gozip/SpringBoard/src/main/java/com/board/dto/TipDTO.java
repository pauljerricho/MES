package com.board.dto;

import org.apache.ibatis.type.Alias;

@Alias("tip")
public class TipDTO {
	private String t_id;
	private String t_no;
	private String t_title;
	private String t_content;
	private String t_comment;
	public TipDTO(String t_id, String t_no, String t_title, String t_content, String t_comment) {
		super();
		this.t_id = t_id;
		this.t_no = t_no;
		this.t_title = t_title;
		this.t_content = t_content;
		this.t_comment = t_comment;
	}
	public TipDTO() {
	}
	public String getT_id() {
		return t_id;
	}
	public void setT_id(String t_id) {
		this.t_id = t_id;
	}
	public String getT_no() {
		return t_no;
	}
	public void setT_no(String t_no) {
		this.t_no = t_no;
	}
	public String getT_title() {
		return t_title;
	}
	public void setT_title(String t_title) {
		this.t_title = t_title;
	}
	public String getT_content() {
		return t_content;
	}
	public void setT_content(String t_content) {
		this.t_content = t_content;
	}
	public String getT_comment() {
		return t_comment;
	}
	public void setT_comment(String t_comment) {
		this.t_comment = t_comment;
	}
}
