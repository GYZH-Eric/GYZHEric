package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Cpuser;



public interface CpuserDao {
	
	public List<Cpuser> findCpuserWithIdt();
	public List<Cpuser> findCpuserAll();
	public List<Cpuser> findCpuserById(Integer cpId);
	public List<Cpuser> findCpuserByIn(Integer idtId);
	public int insertCpuser(Cpuser cpuser);
	public Cpuser deleteCpuserById(Integer cpId);
	public int updateCpuser(Cpuser cpuser);
	public List<Cpuser> findCpuserPage(Integer start,Integer count);
	
}
