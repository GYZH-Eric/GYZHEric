package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Recruit;

public interface RecruitDao {
	public List<Recruit> findRecruitAll();
	public List<Recruit> findRecruitById(Integer reId);
	public int insertRecruit(Recruit recruit);
	public int deleteRecruitById(Integer recId);
	public int updateRecruit(Recruit recruit);
}
