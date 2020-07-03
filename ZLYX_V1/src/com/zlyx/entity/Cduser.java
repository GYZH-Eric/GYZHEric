package com.zlyx.entity;


public class Cduser {
	private Integer cdId;
	private String cdName;
	private String pwd;
	private String tel;
	private byte[] photo;
	public Integer getCdId() {
		return cdId;
	}
	public  void setCdId(Integer cdId) {
		this.cdId = cdId;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	public String getCdName() {
		return cdName;
	}
	public void setCdName(String cdName) {
		this.cdName = cdName;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
}
