package com.tech.blog.entities;

public class Message {
	private String content;
	private String type;
	private String csstype;
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Message(String content, String type, String csstype) {
		super();
		this.content = content;
		this.type = type;
		this.csstype = csstype;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCsstype() {
		return csstype;
	}
	public void setCsstype(String csstype) {
		this.csstype = csstype;
	}
	
	
	
	
}
