package com.board.dto;
import org.apache.ibatis.type.Alias;
@Alias("answer")
public class AnswerDTO {
	private String id;
	private String a_content;
	public AnswerDTO() {
	}
	public AnswerDTO(String id, String a_content) {
		super();
		this.id = id;
		this.a_content = a_content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
}
