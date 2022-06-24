package com.dto;

public class FaqDto {
	// 자주묻는 질문 정보
	int faqid;
	String title;
	String content;
	String comment;
	public int getFaqid() {
		return faqid;
	}
	public void setFaqid(int faqid) {
		this.faqid = faqid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	

}
