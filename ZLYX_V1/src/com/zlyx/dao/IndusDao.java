package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Indus;


public interface IndusDao {
	public List<Indus> findIndusAll();
	public List<Indus> findIndusById(Integer idtId);
	public int insertIndus(Indus indus);
	public Indus deleteIndusById(Integer idtId);
	public int updateIndus(Indus indus);
}
