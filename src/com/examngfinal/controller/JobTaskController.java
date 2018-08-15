/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.examngfinal.bean.job.JobTask;
import com.examngfinal.bean.sys.Employee;
import com.examngfinal.bean.sys.SysUser;
import com.examngfinal.dao.JobTaskDao;
import com.examngfinal.dao.SysUserDao;
import com.examngfinal.util.OperationMessage;

/**
 * 
 * 工作指标模块控制
 * v1.0 shiyt
 */
@Controller
public class JobTaskController {
	@Autowired
	private JobTaskDao jobTaskDao;
	@Autowired
	private SysUserDao sysDao;
	//添加员工任务指标
	   @RequestMapping(value="addEmployeeTask.do", method=RequestMethod.POST)

		public String addEm(JobTask jobTask) {
				int emId = jobTask.getEmId();
		   		Employee userPShow=sysDao.findEmployee(emId);
		   		jobTask.setTaEmname(userPShow.getEmName());
		   		jobTaskDao.addEmployeeTask(jobTask);
			return "add-emp-aim";
		}
	 //添加项目经理任务指标
	   @RequestMapping(value="addManagerTask.do", method=RequestMethod.POST)

		public String addMa( JobTask jobTask) {
		   		int emId = jobTask.getEmId();
		   		Employee userPShow=sysDao.findEmployee(emId);
		   		jobTask.setTaEmname(userPShow.getEmName());
				jobTaskDao.addManagerTask(jobTask);
			return "add-manage-aim";
		}
	 //删除经理任务指标
	   @RequestMapping("delMaTask")
		public String delMaTask(HttpServletRequest request, HttpServletResponse response) {
			   String userId = request.getParameter("id");
				try{
					 int taskId = Integer.parseInt(userId);
					 jobTaskDao.delTask(taskId);
				}catch(Exception ex){
					ex.printStackTrace();
				}
				return "redirect:managerTaskShow.do";
			}
	 //删除员工任务指标
	   @RequestMapping("delEmTask")
		public String delEmTask(HttpServletRequest request, HttpServletResponse response) {
			   String userId = request.getParameter("id");
				try{
					 int taskId = Integer.parseInt(userId);
					 jobTaskDao.delTask(taskId);
				}catch(Exception ex){
					ex.printStackTrace();
				}
				return "redirect:employeeTaskShow.do";
			}
	   
	 //编辑员工任务指标
	   @RequestMapping("editEmployeeTask")

		public String editEmTask(JobTask jobTask){
		   		int emId = jobTask.getEmId();
		   		Employee userPShow=sysDao.findEmployee(emId);
		   		jobTask.setTaEmname(userPShow.getEmName());
				jobTaskDao.editEmployeeTask(jobTask);
			return "edit-emp-aim";
		}
	 //编辑项目经理任务指标
	   @RequestMapping(value="editManagerTask.do", method=RequestMethod.POST)

		public String editMaTask(JobTask jobTask){
		    int emId = jobTask.getEmId();
	   		Employee userPShow=sysDao.findEmployee(emId);
	   		jobTask.setTaEmname(userPShow.getEmName());
		    jobTaskDao.editManagerTask(jobTask);
			return "edit-manage-aim";//应该返回json格式的值（此写法会造成执行ajax的error方法）
		}
	   
	 //显示经理任务信息
	   @RequestMapping("TaskMDShow")
	   public String TaskMDShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String userId = request.getParameter("id");
		   int taskid = Integer.parseInt(userId);
		   JobTask TaskMDShow=jobTaskDao.findTask(taskid);	
		   session.setAttribute("TaskMDShow", TaskMDShow);
		   return "edit-manage-aim";
	   }
	 //显示员工任务信息
	   @RequestMapping("TaskEDShow")
	   public String TaskEDShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String userId = request.getParameter("id");
		   int taskid = Integer.parseInt(userId);
		   JobTask TaskMDShow=jobTaskDao.findTask(taskid);	
		   session.setAttribute("TaskMDShow", TaskMDShow);
		   return "edit-emp-aim";
	   }
	 //显示我的任务信息
	   @RequestMapping("MytaskShow")
	   public String MytaskShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String userId = request.getParameter("id");
		   int taskid = Integer.parseInt(userId);
		   JobTask MytaskShow=jobTaskDao.findTask(taskid);	
		   session.setAttribute("MytaskShow", MytaskShow);
		   return "detail-my-aim";
	   }
	 //显示所有员工以及任务指标
	   @RequestMapping("employeeTaskShow")

	   public String employeeTaskShow(HttpSession session){
		   List<JobTask> jelist=jobTaskDao.findEmployeeTask();
		   session.setAttribute("jelist", jelist);
		   return "emp-aim";
	   }
	 //显示所有项目经理以及任务指标
	   @RequestMapping("managerTaskShow")

	   public String managerTaskShow(HttpSession session){
		   List<JobTask> jmlist=jobTaskDao.findManagerTask();		   
		   session.setAttribute("jmlist", jmlist);
		   return "department-aim";
	   }
	 //显示自己任务指标
	   @RequestMapping("myTaskShow")

	   public String myTaskShow(HttpSession session){
		   SysUser user = (SysUser)session.getAttribute("user");
		   int userid = user.getEmId();
		   List<JobTask> mtlist=jobTaskDao.findMyTask(userid);		   
		   session.setAttribute("mtlist", mtlist);
		   return "my-aim";
	   }
}
