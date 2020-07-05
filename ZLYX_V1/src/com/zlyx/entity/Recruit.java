package com.zlyx.entity;

public class Recruit {
	private Integer recId;
	private Integer cpId;
	private String rPos;
	private String rInfor;
	private String sal;
	private String address;
	private Cpuser cpuser;
	public Cpuser getCpuser() {
		return cpuser;
	}
	public void setCpuser(Cpuser cpuser) {
		this.cpuser = cpuser;
	}
	public Integer getRecId() {
		return recId;
	}
	public void setRecId(Integer recId) {
		this.recId = recId;
	}
	public Integer getCpId() {
		return cpId;
	}
	public void setCpId(Integer cpId) {
		this.cpId = cpId;
	}
	public String getrPos() {
		return rPos;
	}
	public void setrPos(String rPos) {
		this.rPos = rPos;
	}
	public String getrInfor() {
		return rInfor;
	}
	public void setrInfor(String rInfor) {
		this.rInfor = rInfor;
	}
	public String getSal() {
		return sal;
	}
	public void setSal(String sal) {
		this.sal = sal;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
