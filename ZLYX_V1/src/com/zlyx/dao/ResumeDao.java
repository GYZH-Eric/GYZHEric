package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Resume;

	public interface ResumeDao {
		public List<Resume> findResumeAll();
		public List<Resume> findResumeById(Integer reId);
		public int insertResume(Resume resume);
		public int deleteResumeById(Integer reId);
		public int updateResume(Resume resume); 
	}
