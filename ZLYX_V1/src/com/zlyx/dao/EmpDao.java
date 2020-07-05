package com.zlyx.dao;

import java.util.List;

import com.zlyx.entity.Emp;

public interface EmpDao {
	public List<Emp> findEmpAll();
	public List<Emp> findEmpById(Integer empId);
	public int insertEmp(Emp emp);
	public int deleteEmpById(Integer empId);
	public int updateEmp(Emp emp);
}
