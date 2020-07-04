package com.zlyx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.CpuserDao;
import com.zlyx.entity.Cpuser;
import com.zlyx.entity.Grid;

@Controller
public class CpuserController {

	@Autowired
	public CpuserDao cpDao;
	
	//显示企业用户列表
	@RequestMapping("cpList")
	@ResponseBody
	public Grid cpList() {
		List<Cpuser> list = cpDao.findCpuserWithIdt();
		return new Grid(0,"ok",list.size(),list);
	}
	
	@RequestMapping("updateCp")
    @ResponseBody
    public String updateCp(Cpuser cpuser) {
    	cpDao.updateCpuser(cpuser);
    	return "ok";
    }
	
	@RequestMapping("delCp")
    @ResponseBody
    public String delCd(Cpuser cpuser) {
    	cpDao.deleteCpuserById(cpuser.getCpId());
    	return "ok";
    }
	
	@RequestMapping("addCp")
    @ResponseBody
    public String addCd(Cpuser cpuser) {
    	cpDao.insertCpuser(cpuser);
    	return "ok";
    }
}
