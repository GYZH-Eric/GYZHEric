package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Recruit;

public interface RecruitDao {
	public List<Recruit> findRecruitAll();
	public List<Recruit> findRecruitById(Integer reId);
	public List<Recruit> findRecMapById(Integer reId);
	public List<Recruit> findRecMapByCp(Integer cpId);
	public int insertRecruit(Recruit recruit);
	public int deleteRecruitById(Integer recId);
	public int updateRecruit(Recruit recruit);
	public List<Recruit> findRecruitPage(Integer start,Integer count);
}
