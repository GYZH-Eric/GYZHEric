package com.zlyx.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.AdminDao;
import com.zlyx.dao.CduserDao;
import com.zlyx.dao.RecruitDao;
import com.zlyx.dao.ResumeDao;
import com.zlyx.entity.Admin;
import com.zlyx.entity.Cduser;
import com.zlyx.entity.Recruit;
import com.zlyx.entity.Resume;





@Controller
public class InitController {
	
	@Autowired
	private AdminDao aDao;
	@Autowired
	private ResumeDao resDao;
	@Autowired
	private RecruitDao rDao;
	@Autowired
	private CduserDao cdDao;
	
	@RequestMapping("initCount")
	@ResponseBody
	public String fun(ModelMap mp)throws Exception{
		System.out.println("start-------------------------");
		String cdNum=aDao.countCduser();
		String cpNum=aDao.countCpuser();
		String iNum=aDao.countIndus();
		String rNum=aDao.countResume();
		String nlist="["+rNum+","+iNum+","+cpNum+","+cdNum+"]";
		return nlist;
	}
	@RequestMapping("initRec")
	@ResponseBody
	public List<Recruit> fun3() throws Exception {
	    List<Recruit> slist = rDao.findRecruitPage(0, 16);
	    return slist;
	}
	@RequestMapping("initRes")
	@ResponseBody
	public List<Resume> fun4() throws Exception {
	    List<Resume> list = resDao.findResumePage(0, 4);
	    return list;
	}
	//处理登录请求的方法 处理post请求
    @RequestMapping("loginFront")
    @ResponseBody
    public String login(String userName, String pwd,HttpSession session,ModelMap map){
    	System.out.println(userName+pwd);
    	Cduser cduser = cdDao.findCduserByName(userName);
        //判断登录是否成功 假的
        if(cduser!=null && pwd.equals(cduser.getPwd())){
            //登陆成功 跳转页面 信息放入session 供判断是否登录
            session.setAttribute("userNameFront",userName);
            return "ok";
        }else{
            //登陆失败 提交错误信息
            map.addAttribute("msg", "请登录");
            return "false";
        }
    }
    @RequestMapping("signUp")
    @ResponseBody
    public String addCd(Cduser cduser,HttpSession session) throws Exception{
    	cdDao.insertCduser(cduser);
    	session.setAttribute("userNameFront",cduser.getCdName());
    	return "ok";
    }
	
}
