package com.zlyx.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
    public Grid cdList(Integer page,Integer limit) {
    	List<Cduser> list = cdDao.findCduserAll();
    	List<Cduser> list2 = cdDao.findCduserPage((page-1)*limit, limit);
    	return new Grid(0,"ok",list.size(),list2);
    }
    
    @RequestMapping("showCduser")
	@ResponseBody
	public Grid fun2(Integer cdId) throws Exception{
		List<Cduser> slist=cdDao.findCduserById(cdId);
		return new Grid(0,"ok",slist.size(),slist);
	}
    
    @RequestMapping("updateCd")
    @ResponseBody
    public String updateCd(Cduser cduser) {
    	cdDao.updateCduser(cduser);
    	return "ok";
    }
    
    @RequestMapping("delCd")
    @ResponseBody
    public String delCd(Cduser cduser) {
    	cdDao.deleteCduserById(cduser.getCdId());
    	return "ok";
    }
    
    @RequestMapping("addCd")
    @ResponseBody
    public String addCd(Cduser cduser) throws Exception{
    	cdDao.insertCduser(cduser);
    	return "ok";
    }
    
    @RequestMapping("upCd")
    @ResponseBody
    public Grid upCd(@RequestParam("file") MultipartFile upFile,HttpServletRequest request,String id) throws Exception{
    	String path=request.getServletContext().getRealPath("/");
		String fileType=upFile.getOriginalFilename().substring(upFile.getOriginalFilename().indexOf("."));
		String saveName=id+fileType;
		File file=new File(path+"upload/"+saveName);
		upFile.transferTo(file);
		request.setAttribute("filename", "upload/"+saveName);
		return new Grid(0, saveName, null, null);
    }
}
