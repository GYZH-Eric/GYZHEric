package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Resume;

	public interface ResumeDao {
		public List<Resume> findResumeAll();
		public List<Resume> findResumeById(Integer reId);
		public List<Resume> findResMapById(Integer reId);
		public List<Resume> findResMapByCd(String cdName);
		public int insertResume(Resume resume);
		public int deleteResumeById(Integer reId);
		public int updateResume(Resume resume); 
		public List<Resume> findResumePage(Integer start,Integer count);
	}
