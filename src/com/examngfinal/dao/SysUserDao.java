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
 * ��Ա����Ϣ����ɾ�ġ���½
 */

public interface SysUserDao {
	//��ҳ/
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
	
	
	
   public SysUser findUser(String userId);//��½
   public Employee findEmployee(Integer emId);//��½,�鿴Ա����ϸ��Ϣ
   public void addUser(SysUser user);//���Ա��������û���Ϣ
   public void addEmployee(Employee employee);//���Ա��
   public void addDepart(Department department);//��Ӳ���
   
   public void delUser(String userId);//ɾ���û�
   public void delEmployee(Integer emId);//ɾ��Ա��
   public void delDepart(Integer dtId);//ɾ������
   
   public void editDepart(Department department);//�༭������Ϣ
   public void editUser(SysUser user);//�༭Ա����Ϣ
   public void editEmployee(Employee employee);//�༭Ա����Ϣ
   public void changeToY(int emId);//�����û�״̬Ϊ��ְ
   public void changeToN(int emId);//�����û�״̬Ϊ��ְ
  // public List<SysUser> findUserDetail();//��Ա����ϸ��Ϣ
   public List<Employee> findUserAll();//������Ա��
   public List<Employee> findManagerAll();//��������Ŀ����
   public List<Employee> findAdminAll();//�����й���Ա
   public List<Employee> findEmployeeAll();//�����й���
   public List<Employee> findApplicantAll();//������ӦƸ��
   public List<Department> findDepartAll();//�����в���
   public Department findDepart(int departId);//�鲿����Ϣ
   
}
