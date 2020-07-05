package com.zlyx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.ResumeDao;
import com.zlyx.entity.Grid;
import com.zlyx.entity.Resume;


@Controller
public class ResumeController {

	@Autowired
	private ResumeDao dao;
	@RequestMapping("resList")
	@ResponseBody
	public Grid fun(ModelMap mp)throws Exception{
		List<Resume> slist=dao.findResumeAll();
		return new Grid(0,"ok",slist.size(),slist);
	}

	@RequestMapping("showResume")
	@ResponseBody
	public Grid fun1(ModelMap mp,Integer reId)throws Exception{
		List<Resume> slist=dao.findResumeById(reId);
		return new Grid(0,"ok",slist.size(),slist);
	}

	@RequestMapping("addRes")
	@ResponseBody
	public String fun2(ModelMap mp,Resume resume)throws Exception{
		int r=dao.insertResume(resume);
		return "ok";
	}
	@RequestMapping("delRes")
	@ResponseBody
	public String fun3(ModelMap mp,Integer reId)throws Exception{
		int r=dao.deleteResumeById(reId);
		return "ok";
	}

	@RequestMapping("updateRes")
	@ResponseBody
	public String fun4(Resume resume)throws Exception{
		dao.updateResume(resume);
		return "ok";
	}
	
}
