package com.zlyx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.RecruitDao;
import com.zlyx.entity.Grid;
import com.zlyx.entity.Recruit;




@Controller
public class RecruitController {

	@Autowired
	private RecruitDao dao;
	@RequestMapping("recList")
	@ResponseBody
	public Grid fun(ModelMap mp,Integer page,Integer limit)throws Exception{
		List<Recruit> list=dao.findRecruitPage((page-1)*limit, limit);
		List<Recruit> slist=dao.findRecruitAll();
		return new Grid(0,"ok",slist.size(),list);
	}

	@RequestMapping("showRecruit")
	@ResponseBody
	public Grid fun1(ModelMap mp,Integer reId)throws Exception{
		List<Recruit> slist=dao.findRecruitById(reId);
		return new Grid(0,"ok",slist.size(),slist);
	}

	@RequestMapping("addRec")
	@ResponseBody
	public String fun2(ModelMap mp,Recruit recruit)throws Exception{
		int r=dao.insertRecruit(recruit);
		return "ok";
	}
	@RequestMapping("delRec")
	@ResponseBody
	public String fun3(ModelMap mp,Integer recId)throws Exception{
		int r=dao.deleteRecruitById(recId);
		return "ok";
	}

	@RequestMapping("updateRec")
	@ResponseBody
	public String fun4(Recruit recruit)throws Exception{
		dao.updateRecruit(recruit);
		return "ok";
	}
	
}
