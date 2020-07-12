package com.zlyx.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
	public Grid cpList(Integer page,Integer limit) {
		List<Cpuser> list = cpDao.findCpuserAll();
		List<Cpuser> list2 = cpDao.findCpuserPage((page-1)*limit, limit);
		return new Grid(0,"ok",list.size(),list2);
	}
	
	@RequestMapping("showCpuser")
	@ResponseBody
	public Grid fun2(Integer cpId) throws Exception{
		List<Cpuser> slist=cpDao.findCpuserById(cpId);
		return new Grid(0,"ok",slist.size(),slist);
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
	
	@RequestMapping("upCp")
    @ResponseBody
    public Grid upCp(@RequestParam("file") MultipartFile upFile,HttpServletRequest request,String id) throws Exception{
    	String path=request.getServletContext().getRealPath("/");
		String fileType=upFile.getOriginalFilename().substring(upFile.getOriginalFilename().indexOf("."));
		String saveName=id+fileType;
		File file=new File(path+"upload/"+saveName);
		upFile.transferTo(file);
		request.setAttribute("filename", "upload/"+saveName);
		return new Grid(0, saveName, null, null);
    }
}
