package com.dto;

public class UserDto {
	private String id;
	private String pwd;
	private String nickName;
	private String email;
	private String birth;
	
	
	public UserDto(String id, String pwd, String nickName, String email, String birth) {
		this.id = id;
		this.pwd = pwd;
		this.nickName = nickName;
		this.email = email;
		this.birth = birth;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	
}
