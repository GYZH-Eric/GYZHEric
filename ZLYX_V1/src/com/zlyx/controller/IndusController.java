package com.zlyx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.IndusDao;
import com.zlyx.entity.Grid;
import com.zlyx.entity.Indus;

@Controller
public class IndusController {

	@Autowired
	private IndusDao idao;
	
	@RequestMapping("indusList")
	@ResponseBody
	public Grid indusList() {
		List<Indus> list=idao.findIndusAll();
		return new Grid(0,"ok",list.size(),list);
	}
	
	@RequestMapping("updateIn")
    @ResponseBody
    public String updateIn(Indus indus) {
    	idao.updateIndus(indus);
    	return "ok";
    }
	
	@RequestMapping("delIn")
    @ResponseBody
    public String delCd(Indus indus) {
    	idao.deleteIndusById(indus.getIdtId());
    	return "ok";
    }
	
	@RequestMapping("addIn")
    @ResponseBody
    public String addCd(Indus indus) {
    	idao.insertIndus(indus);
    	return "ok";
    }
}
