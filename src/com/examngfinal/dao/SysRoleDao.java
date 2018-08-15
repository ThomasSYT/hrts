package com.examngfinal.dao;

import java.util.List;


import com.examngfinal.bean.sys.SysRole;

public interface SysRoleDao {
	public List<SysRole> findRoleAll();
	public void addRole(SysRole role);
	public void delRole(Integer RoleId);
	public void editRole(SysRole role);
	public SysRole findRole(int roleId);
}
