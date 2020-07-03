package com.zlyx.entity;

public class Admin {

	private Integer userId;
	private String userName;
	private String pwd;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Admin(Integer userId, String userName, String pwd) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.pwd = pwd;
	}
	public Admin() {
		super();
	}
	
	
	
}
