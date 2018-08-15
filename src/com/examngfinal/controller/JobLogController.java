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
import org.springframework.web.bind.annotation.ResponseBody;

import com.examngfinal.bean.job.JobLog;
import com.examngfinal.bean.job.JobTask;
import com.examngfinal.bean.sys.Employee;
import com.examngfinal.bean.sys.SysUser;
import com.examngfinal.dao.JobLogDao;
import com.examngfinal.dao.JobTaskDao;
import com.examngfinal.dao.SysUserDao;
import com.examngfinal.util.OperationMessage;

/**
 * 
 * 工作指标模块控制
 * v1.0 shiyt
 */
@Controller
public class JobLogController {
	@Autowired
	private JobLogDao jobLogDao;
	@Autowired
	private JobTaskDao jobTaskDao;
	@Autowired
	private SysUserDao sysDao;
	//添加个人日志
	   @RequestMapping(value="addLog.do", method=RequestMethod.POST)
		public String addLog(JobLog jobLog,HttpSession session) {
		    Employee employee = (Employee)session.getAttribute("employee");
		    int userid = employee.getEmId();
		    String name = employee.getEmName();
		    int roleid = employee.getRoleId();
		    jobLog.setEmId(userid);
		    jobLog.setTlEmname(name);
		    jobLog.setRoleId(roleid);
		    int taskid = jobLog.getTaskId();
		    JobTask task=jobTaskDao.findTask(taskid);
	   		jobLog.setTlBasetarget(task.getBasetarget());
			jobLogDao.addLog(jobLog);
			return "add-log";
		}
	 
	 //删除经理日志
	   @RequestMapping("delMLog")
	   public String removeLog(HttpServletRequest request, HttpServletResponse response) {
		   String userId = request.getParameter("id");
			try{
				 int logId = Integer.parseInt(userId);
				 jobLogDao.delLog(logId);
			}catch(Exception ex){
				ex.printStackTrace();
			}
			return "redirect:managerLogShow.do";
		}
	 //删除员工日志
	   @RequestMapping("delELog")
	   public String delELog(HttpServletRequest request, HttpServletResponse response) {
		   String userId = request.getParameter("id");
			try{
				 int logId = Integer.parseInt(userId);
				 jobLogDao.delLog(logId);
			}catch(Exception ex){
				ex.printStackTrace();
			}
			return "redirect:employeeLogShow.do";
		}
	 //删除自己日志
	   @RequestMapping("delMyLog")
	   public String delMyLog(HttpServletRequest request, HttpServletResponse response) {
		   String userId = request.getParameter("id");
			try{
				 int logId = Integer.parseInt(userId);
				 jobLogDao.delLog(logId);
			}catch(Exception ex){
				ex.printStackTrace();
			}
			return "redirect:myLogShow.do";
		}
	   
	 //编辑个人日志
	   @RequestMapping("editLog")
		public String editEmLog(JobLog jobLog){
		    int taskid = jobLog.getTaskId();
		    JobTask task=jobTaskDao.findTask(taskid);
	   		jobLog.setTlBasetarget(task.getBasetarget());
	   		jobLogDao.editLog(jobLog);
			return "edit-manage-aim";//应该返回json格式的值（此写法会造成执行ajax的error方法）
		}
	 
	 //显示所有员工任务指标以及日志
	   @RequestMapping("employeeLogShow")

	   public String employeeLogShow(HttpSession session){
		   List<JobLog> elslist=jobLogDao.findEmployeeLog();
		   session.setAttribute("elslist", elslist);
		   return "emp-log";
	   }
	 //显示所有项目经理任务指标以及日志
	   @RequestMapping("managerLogShow")

	   public String managerLogShow(HttpSession session){
		   List<JobLog> mlslist=jobLogDao.findManagerLog();
		   session.setAttribute("mlslist", mlslist);
		   return "depart-log";
	   }
	 //显示自己日志
	   @RequestMapping("myLogShow")

	   public String myLogShow(HttpSession session){
		   SysUser user = (SysUser)session.getAttribute("user");
		   int userid = user.getEmId();
		   List<JobLog> mtslist=jobLogDao.findMyLog(userid);		   
		   session.setAttribute("mtslist", mtslist);
		   return "my-log";
	   }
	   
	 //显示日志信息
	   @RequestMapping("logPShow")
	   public String logPShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String userId = request.getParameter("id");
		   int logId = Integer.parseInt(userId);
		   JobLog logPShow=jobLogDao.findLog(logId);	
		   session.setAttribute("logPShow", logPShow);
		   return "detail-log";
	   }
	 //显示自己日志信息
	   @RequestMapping("logMyShow")
	   public String logMyShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String userId = request.getParameter("id");
		   int logId = Integer.parseInt(userId);
		   JobLog logPShow=jobLogDao.findLog(logId);	
		   session.setAttribute("logPShow", logPShow);
		   return "edit-log";
	   }
}
