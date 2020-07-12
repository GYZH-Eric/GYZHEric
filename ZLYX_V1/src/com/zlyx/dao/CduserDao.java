package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Cduser;



public interface CduserDao {
	public List<Cduser> findCduserAll();
	public List<Cduser> findCduserById(Integer cdId);
	public Cduser findCduserByName(String cdName);
	public int insertCduser(Cduser cduser);
	public int deleteCduserById(Integer cdId);
	public int updateCduser(Cduser cduser);
	public List<Cduser> findCduserPage(Integer start,Integer count);
}
