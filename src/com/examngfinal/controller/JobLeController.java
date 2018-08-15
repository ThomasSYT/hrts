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

import com.examngfinal.bean.job.JobLearn;
import com.examngfinal.bean.job.JobLeave;
import com.examngfinal.bean.job.JobLog;
import com.examngfinal.bean.job.JobTask;
import com.examngfinal.bean.sys.Employee;
import com.examngfinal.bean.sys.SysUser;
import com.examngfinal.dao.JobTaskDao;
import com.examngfinal.service.JobLeService;
import com.examngfinal.util.OperationMessage;

/**
 * 
 * 工作指标模块控制
 * v1.0 shiyt
 */
@Controller
public class JobLeController {
	@Autowired
	private JobLeService jobLeService;
	
	//删除自己培训记录
	   @RequestMapping("delMyLearn")
	   public String delMyLearn(HttpServletRequest request, HttpServletResponse response) {
		   String userId = request.getParameter("id");
			try{
				 int learnId = Integer.parseInt(userId);
				 jobLeService.delLearn(learnId);
			}catch(Exception ex){
				ex.printStackTrace();
			}
			return "redirect:myLearnShow.do";
		}
	//添加请假申请
	   @RequestMapping(value="addLeave.do", method=RequestMethod.POST)
		public String addLeave(JobLeave jobLeave,HttpSession session) {
		    Employee employee = (Employee)session.getAttribute("employee");
		    int userid = employee.getEmId();
		    String name = employee.getEmName();
		    jobLeave.setEmId(userid);
		    jobLeave.setLeemname(name);
	   		jobLeService.addLeave(jobLeave);
			return "leave-set";
		}
	   //添加培训记录
	   @RequestMapping(value="addLearn.do", method=RequestMethod.POST)
		public String addLearn(JobLearn jobLearn,HttpSession session) {
		    Employee employee = (Employee)session.getAttribute("employee");
		    int userid = employee.getEmId();
		    String name = employee.getEmName();
		    jobLearn.setEmId(userid);
		    jobLearn.setLeaemname(name);
	   		jobLeService.addLearn(jobLearn);
			return "learn-set";
		}
	 
	 //申请同意
	   @RequestMapping(value="changeStateY.do", method=RequestMethod.POST)
		public void changeStateY(JobLeave jobLeave){
		    jobLeService.changeStateY(jobLeave);
		}
	 //申请驳回
	   @RequestMapping(value="changeStateN.do", method=RequestMethod.POST)
		public void changeStateN(JobLeave jobLeave){
		    jobLeService.changeStateN(jobLeave);
		}
	   
	 //显示我的请求
	   @RequestMapping("myRequireShow")

	   public String myRequire(HttpSession session){
		   SysUser user = (SysUser)session.getAttribute("user");
		   int userid = user.getEmId();
		   List<JobLeave> mrlist=jobLeService.findMyLeave(userid);
		   System.out.println("____________________"+mrlist);
		   session.setAttribute("mrlist", mrlist);
		   return "my-request";
	   }
	   //显示所有请假
	   @RequestMapping("allRequireShow")

	   public String allRequire(HttpSession session){
		   List<JobLeave> arlist=jobLeService.findAllLeave();
		   session.setAttribute("arlist", arlist);
		   return "deal-request";
	   }
	 //显示培训记录
	   @RequestMapping("myLearnShow")
	   public String myLearn(HttpSession session){
		   SysUser user = (SysUser)session.getAttribute("user");
		   int userid = user.getEmId();
		   List<JobLeave> mlsslist=jobLeService.findMyLearn(userid);
		   session.setAttribute("mlsslist", mlsslist);
		   return "my-learn";
	   }
	 //显示请求信息
	   @RequestMapping("leaPShow")
	   public String leaPShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String userId = request.getParameter("id");
		   int leaId = Integer.parseInt(userId);
		   JobLeave leaPShow=jobLeService.findLea(leaId);	
		   session.setAttribute("leaPShow", leaPShow);
		   return "leave-deal";
	   }
	 //显示培训信息
	   @RequestMapping("learnPShow")
	   public String learnPShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String userId = request.getParameter("id");
		   int learnId = Integer.parseInt(userId);
		   JobLearn learnPShow=jobLeService.findLearn(learnId);	
		   session.setAttribute("learnPShow", learnPShow);
		   return "edit-learn";
	   }
}
