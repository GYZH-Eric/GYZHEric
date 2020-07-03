package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Indus;


public interface IndusDao {
	public List<Indus> findIndusAll();
	public Indus findIndusById(String idtId);
	public int insertIndus(Indus indus);
	public Indus deleteIndusById(String idtId);
}
