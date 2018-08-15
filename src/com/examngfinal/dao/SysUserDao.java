package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.TbPay;
import com.examngfinal.bean.job.JobLeave;
import com.examngfinal.bean.job.JobLog;
import com.examngfinal.bean.job.JobTask;
import com.examngfinal.bean.sys.Department;
import com.examngfinal.bean.sys.Employee;
import com.examngfinal.bean.sys.SysRole;
import com.examngfinal.bean.sys.SysUser;
/**
 * 对员工信息的增删改、登陆
 */

public interface SysUserDao {
	//分页/
	public List<Employee> selectByPage(int pageSize,int pageNum);
	public List<Department> selectByPageDe(int pageSize,int pageNum);
	public int getPageCount(int pageSize);
	public int getPageCountDe(int pageSize);
	
	public List<Employee> findEmpMH(String name);
	public List<Department> findDepartMH(String name);
//	public List<SysRole> findRoleMH(String name);
//	public List<JobTask> findTaskMH(String name);
//	public List<JobLog> findLogMH(String name);
//	public List<JobLeave> findLeaveMH(String name);
//	public List<TbPay> findPayMH(String name);
	
	
	
   public SysUser findUser(String userId);//登陆
   public Employee findEmployee(Integer emId);//登陆,查看员工详细信息
   public void addUser(SysUser user);//添加员工先添加用户信息
   public void addEmployee(Employee employee);//添加员工
   public void addDepart(Department department);//添加部门
   
   public void delUser(String userId);//删除用户
   public void delEmployee(Integer emId);//删除员工
   public void delDepart(Integer dtId);//删除部门
   
   public void editDepart(Department department);//编辑部门信息
   public void editUser(SysUser user);//编辑员工信息
   public void editEmployee(Employee employee);//编辑员工信息
   public void changeToY(int emId);//更新用户状态为入职
   public void changeToN(int emId);//更新用户状态为离职
  // public List<SysUser> findUserDetail();//查员工详细信息
   public List<Employee> findUserAll();//查所有员工
   public List<Employee> findManagerAll();//查所有项目经理
   public List<Employee> findAdminAll();//查所有管理员
   public List<Employee> findEmployeeAll();//查所有工人
   public List<Employee> findApplicantAll();//查所有应聘者
   public List<Department> findDepartAll();//查所有部门
   public Department findDepart(int departId);//查部门信息
   
}
