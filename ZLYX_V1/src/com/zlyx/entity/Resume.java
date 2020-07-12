package com.zlyx.entity;

public class Resume {
	private Integer reId;
	private Integer cdId;
	private String cdSex;
	private String address;
	private String pos;
	private String Infor;
	private String jobTime;
	private String cdSal;
	private String cdExp;
	private String email;
	private Cduser cduser;
	public String getJobTime() {
		return jobTime;
	}
	public void setJobTime(String jobTime) {
		this.jobTime = jobTime;
	}
	public String getCdSal() {
		return cdSal;
	}
	public void setCdSal(String cdSal) {
		this.cdSal = cdSal;
	}
	public String getCdExp() {
		return cdExp;
	}
	public void setCdExp(String cdExp) {
		this.cdExp = cdExp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
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
