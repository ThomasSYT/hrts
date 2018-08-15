package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.sys.SysFun;
import com.examngfinal.bean.sys.SysUser;

public interface SysFunDao {
	public List<SysFun> findFunAll(SysUser user);
	public SysFun findFun(int id);
	public int findFunId();
	public void addFun(SysFun sf);
	public void updateFun(SysFun sf);
	public void delFun(SysFun sf);
	public void delRoleFun(SysFun sf);
	public void addRoleFun(int roleId,int funId);
}
