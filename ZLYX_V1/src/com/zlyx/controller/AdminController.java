package com.zlyx.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.zlyx.dao.AdminDao;
import com.zlyx.dao.CduserDao;
import com.zlyx.entity.Admin;
import com.zlyx.entity.Cduser;
import com.zlyx.entity.Grid;
import com.zlyx.tool.ClientToken;
import com.zlyx.tool.FaceUtil;

@Controller
public class AdminController {
	
	String ak="7ymYrAgHGhBj5GtU1plEK8Qk";
	String sk="S9Gp9LsrobSHGXNGDmDC28IibmARg9oF";

	@Autowired
	private AdminDao aDao;
	
	@RequestMapping("showUser")
	@ResponseBody
	public Admin showUser(String userName) {
		Admin admin = aDao.findAdminByName(userName);
		return admin;
	}
	
	//处理登录请求的方法 处理post请求
    @RequestMapping("login")
    @ResponseBody
    public String login(String userName, String pwd,HttpSession session,ModelMap map){
    	System.out.println(userName+pwd);
    	Admin admin = aDao.findAdminByName(userName);
        //判断登录是否成功 假的
        if(admin!=null && pwd.equals(admin.getPwd())){
            //登陆成功 跳转页面 信息放入session 供判断是否登录
            session.setAttribute("userName",userName);
            return "ok";
        }else{
            //登陆失败 提交错误信息
            map.addAttribute("msg", "请登录");
            return "false";
        }
    }
	//响应首页数据
    @RequestMapping("showWelcome")
 //   @ResponseBody
    public String showWelcome(ModelMap map) {
    	String cdNum=aDao.countCduser();
    	String cpNum=aDao.countCpuser();
    	String iNum=aDao.countIndus();
    	String rNum=aDao.countResume();
    	map.addAttribute("cdNum", cdNum);
    	map.addAttribute("cpNum", cpNum);
    	map.addAttribute("iNum", iNum);
    	map.addAttribute("rNum", rNum);
    	return "/back/page/welcome";
    }
    
    @RequestMapping("showWelcome2")
    public String showWelcome2(ModelMap map) {
    	String cdNum=aDao.countCduser();
    	String cpNum=aDao.countCpuser();
    	String iNum=aDao.countIndus();
    	String rNum=aDao.countResume();
    	map.addAttribute("cdNum", cdNum);
    	map.addAttribute("cpNum", cpNum);
    	map.addAttribute("iNum", iNum);
    	map.addAttribute("rNum", rNum);
    	return "/back/page/welcome2";
    }
    
    @RequestMapping("updateAdmin")
	@ResponseBody
	public String fun4(Admin admin)throws Exception{
		aDao.updateAdmin(admin);
		return "ok";
	}
    //面部识别
    @RequestMapping("faceId")
    @ResponseBody
    public Grid faceId(@RequestParam("file") MultipartFile upFile,HttpServletRequest request,HttpSession session,String userName) throws Exception {
    	String path=request.getServletContext().getRealPath("/");
		String fileType=upFile.getOriginalFilename().substring(upFile.getOriginalFilename().indexOf("."));
		String saveName=System.currentTimeMillis()+fileType;
		File file=new File(path+"upload/"+saveName);
		upFile.transferTo(file);
		String token=ClientToken.getAuth(ak, sk);
		String result = FaceUtil.faceMatch(token,path+"upload/"+saveName,userName);
		JsonObject jsonObject = new JsonParser().parse(result).getAsJsonObject();
		int error_code = jsonObject.get("error_code").getAsInt();
		if(error_code!=0) {
			return new Grid(0, "false", null, null);
		}
		JsonObject res = jsonObject.get("result").getAsJsonObject();
		Float score = res.get("score").getAsFloat();
		System.out.println(score);
		if(score>=70) {
			session.setAttribute("userName",userName);
			return new Grid(0, "ok", null, null);
		}else {
			return new Grid(0, "false", null, null);
		}
    }
}
