package com.examngfinal.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.examngfinal.bean.TbPay;
import com.examngfinal.bean.job.JobLeave;
import com.examngfinal.bean.job.JobLog;
import com.examngfinal.bean.job.JobTask;
import com.examngfinal.bean.sys.Department;
import com.examngfinal.bean.sys.Employee;
import com.examngfinal.bean.sys.SysRole;
import com.examngfinal.bean.sys.SysUser;
import com.examngfinal.dao.SysRoleDao;
import com.examngfinal.dao.SysUserDao;
import com.examngfinal.util.CheckCode;
import com.examngfinal.util.OperationMessage;

@Controller
public class SysUserController {
   @Autowired
   private SysUserDao sysDao;
   @Autowired
   private SysRoleDao sysRole;
   
   //分页
   @RequestMapping("selectPage")
   public String selectPage(HttpSession session,int pageNum) {
       if(pageNum == 0){pageNum = 1;}
       
       System.out.println(pageNum);
       int pageSize = 8;
       int pagebegin;
       //先将页面开始
       pagebegin = (pageNum-1)*pageSize;
       int pageCount = 0;
       //limit方法查询（传入的参数是:开始行数，总行数）
       //switch (gT) {
           //case 1:
        	   List<Employee> emFenye = sysDao.selectByPage(pagebegin, pageSize);
        	   session.setAttribute("ulist", emFenye);
               pageCount = sysDao.getPageCount(pageSize);
//           case 2:
//        	   List<Department> deFenye = sysDao.selectByPageDe(pagebegin, pageSize);
//        	   session.setAttribute("dlist",deFenye);
//               pageCount = sysDao.getPageCount(pageSize);
//               break;
//           case 3:
//               galist = gadao.selectByPage(pagebegin, pageSize);
//               mm.addAttribute("galist",galist);
//               pageCount = gadao.getPageCount(pageSize);
//               break;
//           case 4:
//               gbalist = gbadao.selectByPage(pagebegin, pageSize);
//               mm.addAttribute("gbalist",gbalist);
//               pageCount = gbadao.getPageCount(pageSize);
//               break;
//           case 5:
//               gclist = gcdao.selectByPage(pagebegin, pageSize);
//               mm.addAttribute("gclist",gclist);
//               pageCount = gcdao.getPageCount(pageSize);
//               break;
//           case 6:
//               golist = godao.selectByPage(pagebegin, pageSize);
//               mm.addAttribute("golist",golist);
//               pageCount = godao.getPageCount(pageSize);
//               break;    
           //default:
             //  break;
       //}
       int a = pageCount%pageSize;
       int pageAll;
       System.out.println("a");
       if(a == 0){
           pageAll = pageCount/pageSize;
       }else{
           pageAll = pageCount/pageSize+1;
       }
       session.setAttribute("pageSize", pageSize);
       session.setAttribute("pageNum", pageNum);
       session.setAttribute("pageCount", pageAll);
       
       return "emp-manage";
   }
   
   //模糊查询
   @RequestMapping("MHDselect")
   public String MHselect(HttpSession session, String MHname) {

	   List<Department> findDepartMH = sysDao.findDepartMH("%" + MHname + "%");
//	   List<SysRole> findRoleMH = sysDao.findRoleMH("%" + MHname + "%");
//	   List<JobTask> findTaskMH = sysDao.findTaskMH("%" + MHname + "%");
//	   List<JobLog> findLogMH = sysDao.findLogMH("%" + MHname + "%");
//	   List<JobLeave> findLeaveMH = sysDao.findLeaveMH("%" + MHname + "%");
//	   List<TbPay> findPayMH = sysDao.findPayMH("%" + MHname + "%");
	   //findTaskMH = sysDao.findTaskMH("%" + goodsname + "%");
	   //findLogMH = sysDao.findLogMH("%" + goodsname + "%");
	   //findLeaveMH = sysDao.findLeaveMH("%" + goodsname + "%");

       session.setAttribute("dlist", findDepartMH);

       return "department-manage";
   }
   @RequestMapping("MHEselect")
   public String MHEselect(HttpSession session, String MHname) {

	   List<Employee> findEmpMH = sysDao.findEmpMH("%" + MHname + "%");
       session.setAttribute("applist", findEmpMH);
       return "applications-manage";
   }
   
   //删除员工
   @RequestMapping("userRemove")
   public String userRemove(HttpServletRequest request, HttpServletResponse response) {
	   String userId = request.getParameter("id");
		//SysUser sysuser=sysDao.findUser(userId);
		try{
			 int userid = Integer.parseInt(userId);
			//sysDao.delUser(userId);
			sysDao.delEmployee(userid);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return "redirect:userShow.do";
	}
   
 //删除离职员工
   @RequestMapping("userRRemove")
   public String userRRemove(int emId) {
			sysDao.delEmployee(emId);
		return null;
	}
   
   //删除部门
   @RequestMapping("departRemove")
   public String departRemove(HttpServletRequest request, HttpServletResponse response) {
	   String dtid = request.getParameter("id");
		try{
			 int dtId = Integer.parseInt(dtid);
			//sysDao.delUser(userId);
			sysDao.delDepart(dtId);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return "redirect:departShow.do";
	}
   
   
   
   //显示员工个人信息
   @RequestMapping("userPShow")
   public String userPShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
	   String userId = request.getParameter("id");
	   int emId = Integer.parseInt(userId);
	   Employee userPShow=sysDao.findEmployee(emId);	
	   session.setAttribute("userPShow", userPShow);
	   return "edit-emp";
   }
   
   //显示员工列表
   @RequestMapping("userShow")
   public String userShow(HttpSession session){
	   List<Employee> ulist=sysDao.findUserAll();	
	   session.setAttribute("ulist", ulist);
	   return "emp-manage";
   }
   
   //显示所有项目经理
   @RequestMapping("managerShow")
   public String managerShow(HttpSession session){
	   List<Employee> ulist=sysDao.findManagerAll();
	   session.setAttribute("ulist", ulist);
	   session.setAttribute("mulist", ulist);
	   return "emp-manage";
   }
   
   //显示所有工人
   @RequestMapping("employeeShow")

   public String employeeShow(HttpSession session){
	   List<Employee> ulist=sysDao.findEmployeeAll();
	   session.setAttribute("ulist", ulist);
	   return "emp-manage";
   }
   
   //显示所有管理员
   @RequestMapping("adminShow")

   public String adminShow(HttpSession session){
	   List<Employee> ulist=sysDao.findAdminAll();
	   session.setAttribute("ulist", ulist);
	   return "emp-manage";
   }
  
   //显示所有应聘者
   @RequestMapping("applicantShow")

   public String applicantShow(HttpSession session){
	   List<Employee> applist=sysDao.findApplicantAll();
	   session.setAttribute("applist", applist);
	   return "applications-manage";
   }
   
	//更新用户状态为入职
   @RequestMapping(value="changeToY.do", method=RequestMethod.POST)
   @ResponseBody
   public OperationMessage changeToY(int emId){
		OperationMessage msg=new OperationMessage();
		try{
			sysDao.changeToY(emId);
			msg.sendMsg(1, "录用成功");
		}catch(Exception ex){
			ex.printStackTrace();
			msg.sendMsg(0, "录用失败");
		}
		return msg;
	}

   
 //更新用户状态为离职
   @RequestMapping(value="changeToN.do", method=RequestMethod.POST)
	@ResponseBody

	public OperationMessage changeToN(int emId){
		OperationMessage msg=new OperationMessage();
		try{
			sysDao.changeToN(emId);
			msg.sendMsg(1, "录用成功");
		}catch(Exception ex){
			ex.printStackTrace();
			msg.sendMsg(0, "录用失败");
		}
		return msg;
	}
   
   //登录验证
   @RequestMapping("findUser")
   @ResponseBody
   public OperationMessage findUser(HttpSession session,@RequestParam("userId") String userId,
		   @RequestParam("pwd")String pwd) {
	SysUser user=new SysUser();
	OperationMessage msg= new OperationMessage();
	user.setPwd(pwd);
	user.setUserId(userId);
	SysUser sysuser=sysDao.findUser(userId);   
	Employee employee=sysDao.findEmployee(sysuser.getEmId());
	sysuser.setEmployee(employee);
	if(sysuser==null){
		msg.sendMsg(1, "用户或密码不正确");
	}else {
		msg.setState(0);
		session.setAttribute("user", sysuser);
		session.setAttribute("employee", employee);
	}
	return msg;
	
   }
   
   //登陆权限验证
   @RequestMapping("findUserKind")
   public String findUserKind(HttpSession session){
	   try {
		   SysUser user=(SysUser) session.getAttribute("user");
		   if(user.getRoleId()==1){
//			   user.setRoleName("管理员");//index页面欢迎+角色
//			   user.setName(user.getUserId());
		   }
		   if(user.getRoleId()==2){
//			   user.setRoleName("学生");
//			   SysStu stu=sysStu.findStuPic(user.getStuId());
//			   user.setName(stu.getStuName());
		   }
		   if(user.getRoleId()==3){
//			   user.setRoleName("教师");
//			   SysTea tea=sysTea.findTea(user.getTeaId());
//			   user.setName(tea.getTeaName());
		   }
		   session.setAttribute("user", user);
		   return "index";
	   } catch (Exception e){
		   
		   return "index";
	   }
	   
   }
   
   
   //编辑员工个人信息
   @RequestMapping("updateUserMassage")
   public String updateUserMassage(Employee em){
	   sysDao.editEmployee(em);
	return "edit-emp";
   }
   //编辑用户信息
   @RequestMapping(value="editUserSave.do", method=RequestMethod.POST)
	public String editUserSave(SysUser user){
		//Employee employee=user.getEmployee();
			sysDao.editUser(user);
			//sysDao.editEmployee(employee);
		return "index";
	}
 //编辑部门信息
   @RequestMapping(value="editDepartSave.do", method=RequestMethod.POST)
	public String editDepartSave(Department department){
			sysDao.editDepart(department);
		return "edit-depart";//应该返回json格式的值（此写法会造成执行ajax的error方法）
	}
   
   //添加用户
   @RequestMapping(value="addUser.do", method=RequestMethod.POST)

	public String list(SysUser sysuser) {
		//Employee employee=sysuser.getEmployee();
			sysDao.addUser(sysuser);
			//sysDao.addEmployee(employee);
		return "index";
	}
 //添加员工
   @RequestMapping(value="addEmployee.do", method=RequestMethod.POST)

	public String addEmployee(Employee employee) {
			sysDao.addEmployee(employee);
		return "applications-manage";
	}
   //添加部门
   @RequestMapping("addDepart")

	public String addDepart(Department department) {
			sysDao.addDepart(department);
			//sysDao.addEmployee(employee);
		return "index";
	}
   
   //显示部门列表
   @RequestMapping("departShow")

   public String departShow(HttpSession session){
	   List<Department> dlist=sysDao.findDepartAll();
	   session.setAttribute("dlist", dlist);
	   return "department-manage";
   }
 //显示部门个人信息
   @RequestMapping("DepartShow")
   public String DepartShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
	   String departid = request.getParameter("id");
	   int departId = Integer.parseInt(departid);
	   Department DepartShow=sysDao.findDepart(departId);	
	   session.setAttribute("DepartShow", DepartShow);
	   return "edit-depart";
   }
   
   
   
   
   
   //验证码
   @RequestMapping("checkCode")
	public void checkCode(HttpServletRequest request,HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		response.setContentType("image/jpeg");
		ServletOutputStream out = response.getOutputStream();
		String cc=CheckCode.getCheckCode();
		System.out.println("---------------------"+cc);
		session.setAttribute("checkcode",cc);			
		
		String ccode=(String) session.getAttribute("checkcode");
		BufferedImage img = new BufferedImage(50,35,BufferedImage.TYPE_INT_RGB);
		Graphics gra = img.getGraphics();
		gra.setColor(Color.CYAN);
		gra.fillRect(0, 0, 50, 35);
		gra.setColor(Color.RED);
		gra.setFont(new Font("Arial Bold", Font.ITALIC, 20));
		gra.drawString(ccode, 3, 20);
		
		
		out.flush();
		
	}
}
