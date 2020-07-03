package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Cduser;



public interface CduserDao {
	public List<Cduser> findCduserAll();
	public Cduser findCduserById(String cdId);
	public int insertCduser(Cduser cduser);
	public Cduser deleteCduserById(String cdId);
}
