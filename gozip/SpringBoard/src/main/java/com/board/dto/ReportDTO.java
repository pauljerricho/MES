package com.board.dto;

import org.apache.ibatis.type.Alias;

@Alias("report")
public class ReportDTO {
	private String id;
	private String r_reason;
	private String r_content;
	private String r_img;
	private String r_date;
	
	public ReportDTO() {
	}
	
	public ReportDTO(String id, String r_reason, String r_content, String r_img, String r_date) {
		super();
		this.id = id;
		this.r_reason = r_reason;
		this.r_content = r_content;
		this.r_img = r_img;
		this.r_date = r_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getR_reason() {
		return r_reason;
	}
	public void setR_reason(String r_reason) {
		this.r_reason = r_reason;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	public String getR_date() {
		return r_date;
	}
	public void setR_date(String r_date) {
		this.r_date = r_date;
	}
	@Override
	public String toString() {
		return "ReportDTO [id=" + id + ", r_reason=" + r_reason + ", r_content=" + r_content + ", r_img=" + r_img
				+ ", r_date=" + r_date + "]";
	}
	
	
}
