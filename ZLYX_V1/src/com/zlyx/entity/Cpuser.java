package com.zlyx.entity;


public class Cpuser {
	 private Integer cpId;
	 private String pwd;
	 private String cpName;
	 private String tel;
	 private Integer idtId;
	 private byte[] logo;
	 private String che;
	 private String dis;
	 private String email;
	 private Indus indus;
	public String getDis() {
		return dis;
	}
	public void setDis(String dis) {
		this.dis = dis;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Indus getIndus() {
		return indus;
	}
	public void setIndus(Indus indus) {
		this.indus = indus;
	}
	public Integer getCpId() {
		return cpId;
	}
	public void setCpId(Integer cpId) {
		this.cpId = cpId;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getCpName() {
		return cpName;
	}
	public void setCpName(String cpName) {
		this.cpName = cpName;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Integer getIdtId() {
		return idtId;
	}
	public void setIdtId(Integer idtId) {
		this.idtId = idtId;
	}
	public byte[] getLogo() {
		return logo;
	}
	public void setLogo(byte[] logo) {
		this.logo = logo;
	}
	public String getChe() {
		return che;
	}
	public void setChe(String che) {
		this.che = che;
	}
	 
}
