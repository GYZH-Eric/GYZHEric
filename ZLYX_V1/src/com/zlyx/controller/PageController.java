package com.zlyx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.CpuserDao;
import com.zlyx.dao.RecruitDao;
import com.zlyx.dao.ResumeDao;
import com.zlyx.entity.Cpuser;
import com.zlyx.entity.Recruit;
import com.zlyx.entity.Resume;


@Controller
public class PageController {
	@Autowired
	private ResumeDao rsDao;
	@Autowired
	private CpuserDao cDao;
	@Autowired
	private RecruitDao rcDao;
	@RequestMapping("resJson")
	@ResponseBody
	public List<Resume> fun(ModelMap mp) throws Exception {
	    List<Resume> slist = rsDao.findResumeAll();
	    return slist;
	    
	  }
	@RequestMapping("cpJson")
	@ResponseBody
	public List<Cpuser> fun1(ModelMap mp) throws Exception {
	    List<Cpuser> slist = cDao.findCpuserWithIdt();
	    return slist;
	    
	  }
	@RequestMapping("recJson")
	@ResponseBody
	public List<Recruit> fun2(ModelMap mp) throws Exception {
	    List<Recruit> slist = rcDao.findRecruitAll();
	    return slist;
	    
	  }
	@RequestMapping("resJsonCd")
	@ResponseBody
	public List<Resume> fun3(String cdName,ModelMap mp) throws Exception {
	    List<Resume> slist = rsDao.findResMapByCd(cdName);
	    return slist;
	    
	  }
	@RequestMapping("recJsonCp")
	@ResponseBody
	public List<Recruit> fun4(Integer cpId,ModelMap mp) throws Exception {
		System.out.println(cpId+"-----------------------");
	    List<Recruit> slist = rcDao.findRecMapByCp(cpId);
	    return slist;
	    
	  }
	
	

}
