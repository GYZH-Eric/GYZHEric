package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Admin;

public interface AdminDao {

	public List<Admin> findAdminAll();
	public Admin findAdminByName(String userName);
	public int insertAdmin(Admin admin);
	public int deleteAdminByName(String userName);
	public String countResume();
	public String countCduser();
	public String countCpuser();
	public String countIndus();
	
}
