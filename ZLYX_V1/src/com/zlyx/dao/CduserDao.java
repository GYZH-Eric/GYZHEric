package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Cduser;



public interface CduserDao {
	public List<Cduser> findCduserAll();
	public Cduser findCduserById(Integer cdId);
	public int insertCduser(Cduser cduser);
	public int deleteCduserById(Integer cdId);
	public int updateCduser(Cduser cduser);
}
