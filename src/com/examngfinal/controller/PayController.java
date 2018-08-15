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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.examngfinal.bean.TbPay;
import com.examngfinal.bean.job.JobExam;
import com.examngfinal.bean.sys.Employee;
import com.examngfinal.dao.PayControllerDao;
import com.examngfinal.dao.SysUserDao;

/**
 * 
 * 工作指标模块控制
 * v1.0 shiyt
 */
@Controller
public class PayController {
	@Autowired
	private PayControllerDao payControllerDao;
	@Autowired
	private SysUserDao sysDao;
	
	//显示薪资
	   @RequestMapping("payDShow")
	   public String payDShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String userId = request.getParameter("id");
		   int payid = Integer.parseInt(userId);
		   TbPay payDShow=payControllerDao.findPay(payid);	
		   session.setAttribute("payDShow", payDShow);
		   return "edit-salary";
	   }
	//修改薪资
	   @RequestMapping(value="changePay.do", method=RequestMethod.POST)
			public String changePay(TbPay tbPay){
		   		payControllerDao.changePay(tbPay);
			return "edit-emp-aim";
			}
	 //添加薪资
	   @RequestMapping(value="addPay.do", method=RequestMethod.POST)
		public String addPay(TbPay tbPay) {
		   int emid = tbPay.getEmId();
		   Employee userPShow=sysDao.findEmployee(emid); 
		   tbPay.setPayEmName(userPShow.getEmName());
		   payControllerDao.addPay(tbPay);
			return "add-salary";
		}
//	   //修改职务
//	   @RequestMapping(value="changePosition.do", method=RequestMethod.POST)
//		@ResponseBody
//		public void changePosition() {
//		   
//		   //跳到改进方案静态页面
//			
//		}
	
	 //查询薪资情况
	   @RequestMapping("payShow")
	   public String payShow(HttpSession session){
		   List<TbPay> pslist=payControllerDao.findPayAll();
		   session.setAttribute("pslist", pslist);
		   return "salary-manager";
	   }
	   
	 //根据薪资能力对员工分类A
	   @RequestMapping("totalDepartingA")
	   public String totalDepartingA(HttpSession session){
		   List<JobExam> ablist=payControllerDao.findTotalDepartingA();
		   session.setAttribute("ablist", ablist);
		   return "total-depart";
	   }
	   
	   
	   
	 //根据薪资能力对员工分类B
	   @RequestMapping("totalDepartingB")
	   public String totalDepartingB(HttpSession session){
		   List<JobExam> ablist=payControllerDao.findTotalDepartingB();
		   session.setAttribute("ablist", ablist);
		   return "total-depart";
	   }
	 //根据薪资能力对员工分类C
	   @RequestMapping("totalDepartingC")
	   public String totalDepartingC(HttpSession session){
		   List<JobExam> ablist=payControllerDao.findTotalDepartingC();
		   session.setAttribute("ablist", ablist);
		   return "total-depart";
	   }
	 //根据薪资能力对员工分类D
	   @RequestMapping("totalDepartingD")
	   public String totalDepartingD(HttpSession session){
		   List<JobExam> ablist=payControllerDao.findTotalDepartingD();
		   session.setAttribute("ablist", ablist);
		   return "total-depart";
	   }
	  
}
