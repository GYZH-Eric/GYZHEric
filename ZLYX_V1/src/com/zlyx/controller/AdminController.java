package com.zlyx.controller;

import java.util.List;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.AdminDao;
import com.zlyx.dao.CduserDao;
import com.zlyx.entity.Admin;
import com.zlyx.entity.Cduser;
import com.zlyx.entity.Grid;

@Controller
public class AdminController {

	@Autowired
	private AdminDao aDao;
	
	
	
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
    
}
