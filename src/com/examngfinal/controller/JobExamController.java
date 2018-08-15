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

import com.examngfinal.bean.job.Complain;
import com.examngfinal.bean.job.JobExam;
import com.examngfinal.bean.job.JobLearn;
import com.examngfinal.bean.job.JobLeave;
import com.examngfinal.bean.sys.Employee;
import com.examngfinal.bean.sys.SysUser;
import com.examngfinal.dao.SysUserDao;
import com.examngfinal.service.JobExamService;
import com.examngfinal.service.JobLeService;
import com.examngfinal.util.OperationMessage;

/**
 * 
 * 工作指标模块控制
 * v1.0 shiyt
 */
@Controller
public class JobExamController {
	@Autowired
	private JobExamService jobExamService;
	@Autowired
	private SysUserDao sysDao;
	//用于员工考评跳转方法
	@RequestMapping("empExamShow")
	public String empExamShow(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
		String userId = request.getParameter("id");
		int examId = Integer.parseInt(userId);
		Employee ExamShow=sysDao.findEmployee(examId);	
		session.setAttribute("ExamShow", ExamShow);
	return "emp-exam";
	}
	//用于标准考评跳转方法
		@RequestMapping("empStaShow")
		public String empStaShow(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
			String userId = request.getParameter("id");
			int examId = Integer.parseInt(userId);
			Employee ExamShow=sysDao.findEmployee(examId);	
			session.setAttribute("ExamShow", ExamShow);
		return "standard-exam";
		}
	//添加员工考评
	   @RequestMapping(value="addEmpExam.do", method=RequestMethod.POST)
		public String addEmpExam(JobExam jobExam) {
			jobExamService.addEmpExam(jobExam);
		return "emp-exam";
		}
	   //添加标准考评
	   @RequestMapping(value="addManExam.do", method=RequestMethod.POST)
	   public String addManExam(JobExam jobExam) {
		   jobExamService.addManExam(jobExam);
		return "standard-exam";
		}
	 //添加标准申诉
	   @RequestMapping(value="addComplain.do", method=RequestMethod.POST)
		public String addComplain(Complain complain,HttpSession session) {
		   SysUser user = (SysUser)session.getAttribute("user");
		   int userid = user.getEmId();
		   complain.setEmId(userid);
		   jobExamService.addComplain(complain);
		   return "exam-complain";
		}
	
	 //显示所有考评记录
	   @RequestMapping("allExamShow")
	   @ResponseBody
	   public List<JobExam> allExam(){
		   List<JobExam> aelist=jobExamService.findAllExam();
		   
		   return aelist;
	   }
	  
}
