package com.zlyx.entity;

public class Resume {
	private Integer reId;
	private Integer cdId;
	private String cdSex;
	private String address;
	private String pos;
	private String Infor;
	private Cduser cduser;
	public Cduser getCduser() {
		return cduser;
	}
	public void setCduser(Cduser cduser) {
		this.cduser = cduser;
	}
	public Integer getReId() {
		return reId;
	}
	public void setReId(Integer reId) {
		this.reId = reId;
	}
	public Integer getCdId() {
		return cdId;
	}
	public void setCdId(Integer cdId) {
		this.cdId = cdId;
	}
	public String getCdSex() {
		return cdSex;
	}
	public void setCdSex(String cdSex) {
		this.cdSex = cdSex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPos() {
		return pos;
	}
	public void setPos(String pos) {
		this.pos = pos;
	}
	public String getInfor() {
		return Infor;
	}
	public void setInfor(String infor) {
		Infor = infor;
	}
	
}
