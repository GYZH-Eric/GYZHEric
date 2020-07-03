package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Cpuser;



public interface CpuserDao {
	public List<Cpuser> findCpuserAll();
	public Cpuser findCpuserById(String cpId);
	public int insertCpuser(Cpuser cpuser);
	public Cpuser deleteCpuserById(String cpId);
}
