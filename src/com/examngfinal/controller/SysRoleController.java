package com.examngfinal.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.examngfinal.bean.sys.Department;
import com.examngfinal.bean.sys.SysRole;
import com.examngfinal.dao.SysRoleDao;
import com.examngfinal.util.OperationMessage;


@Controller
public class SysRoleController {
	@Autowired
	private SysRoleDao sysRole;
	private List<SysRole> roleList;
	//��ʾ��ɫ�б�
	@RequestMapping("roleShow")

	public String findAll(HttpSession session){
		roleList=sysRole.findRoleAll();
		session.setAttribute("roleList", roleList);
		return "role-manage";
	}
	//��ӽ�ɫ
	@RequestMapping("addRole")
	public OperationMessage addRole(SysRole rol){
		OperationMessage msg = new OperationMessage();
		System.out.println("�Ƿ�����");
		try {
			sysRole.addRole(rol);
			msg.sendMsg(1, "����ɹ���");
		} catch (Exception ex) {
			ex.printStackTrace();
			msg.sendMsg(0, "����ʧ�ܣ�");
		}
		return msg;	
	}
	
	//��ʾ��ɫ��Ϣ
	   @RequestMapping("rolePShow")
	   public String rolePShow(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		   String roleid = request.getParameter("id");
		   int roleId = Integer.parseInt(roleid);
		   SysRole rolePShow=sysRole.findRole(roleId);	
		   session.setAttribute("rolePShow", rolePShow);
		   return "edit-role";
	   }
	
	//�༭��ɫ��Ϣ
	   @RequestMapping(value="editRoleSave.do", method=RequestMethod.POST)
		public String editRoleSave(SysRole rol){
			//Employee employee=user.getEmployee();
		   sysRole.editRole(rol);
				//sysDao.editEmployee(employee);
			return "edit-role";//Ӧ�÷���json��ʽ��ֵ����д�������ִ��ajax��error������
		}
	
	//ɾ����ɫ
	@RequestMapping("delRole")
	   public String delRole(HttpServletRequest request, HttpServletResponse response) {
		   String userId = request.getParameter("id");
			try{
				 int userid = Integer.parseInt(userId);
				 sysRole.delRole(userid);
			}catch(Exception ex){
				ex.printStackTrace();
			}
			return "redirect:roleShow.do";
		}
}
