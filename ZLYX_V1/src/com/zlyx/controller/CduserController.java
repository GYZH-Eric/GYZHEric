package com.zlyx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.CduserDao;
import com.zlyx.entity.Cduser;
import com.zlyx.entity.Grid;

@Controller
public class CduserController {

	@Autowired
	private CduserDao cdDao;
	
	//显示求职者用户列表
    @RequestMapping("cdList")
    @ResponseBody
    public Grid cdList() {
    	List<Cduser> list = cdDao.findCduserAll();
    	return new Grid(0,"ok",list.size(),list);
    }
}
