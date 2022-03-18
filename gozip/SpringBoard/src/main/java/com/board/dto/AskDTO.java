package com.board.dto;
import org.apache.ibatis.type.Alias;
@Alias("ask")
public class AskDTO {
	private String a_title;
	private String a_content;
	public AskDTO() {
		super();
	}
	public AskDTO(String a_title, String a_content) {
		super();
		this.a_title = a_title;
		this.a_content = a_content;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
}
