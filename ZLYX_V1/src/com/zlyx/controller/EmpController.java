package com.zlyx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlyx.dao.EmpDao;
import com.zlyx.entity.Emp;
import com.zlyx.entity.Grid;




@Controller
public class EmpController {

	@Autowired
	private EmpDao dao;
	@RequestMapping("empList")
	@ResponseBody
	public Grid fun(ModelMap mp)throws Exception{
		List<Emp> slist=dao.findEmpAll();
		return new Grid(0,"ok",slist.size(),slist);
	}

	@RequestMapping("showEmp")
	@ResponseBody
	public Grid fun1(ModelMap mp,Integer empId)throws Exception{
		List<Emp> slist=dao.findEmpById(empId);
		return new Grid(0,"ok",slist.size(),slist);
	}

	@RequestMapping("addEmp")
	@ResponseBody
	public String fun2(ModelMap mp,Emp emp)throws Exception{
		int r=dao.insertEmp(emp);
		return null;
	}
	@RequestMapping("delEmp")
	@ResponseBody
	public String fun3(ModelMap mp,Integer empId)throws Exception{
		int r=dao.deleteEmpById(empId);
		return null;
	}

	@RequestMapping("updateEmp")
	@ResponseBody
	public String fun4(Emp emp)throws Exception{
		dao.updateEmp(emp);
		return "ok";
	}
	
}
