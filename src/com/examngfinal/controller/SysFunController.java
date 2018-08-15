//package com.examngfinal.controller;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.examngfinal.bean.sys.SysFun;
//import com.examngfinal.bean.sys.SysUser;
//import com.examngfinal.dao.SysFunDao;
//import com.examngfinal.util.OperationMessage;
//
//@Controller
//public class SysFunController {
//	private List<SysFun> ulist;
//	@Autowired
//	private SysFunDao sysDao;
//	@RequestMapping("showFun")
//	@ResponseBody
//	public List<SysFun> findAll(HttpSession session){
//		SysUser user=(SysUser) session.getAttribute("user");
//		ulist=sysDao.findFunAll(user);
//		return ulist;
//	}
//	@RequestMapping("funShowTree")
//	@ResponseBody
//	public List<SysFun> funShowTree(HttpSession session){
//		SysUser user=(SysUser) session.getAttribute("user");
//		ulist= sysDao.findFunAll(user);
//		SysFun smain=new SysFun();
//		smain.setText("系统菜单");
//		this.addChildren(smain,ulist);
//		ulist=new ArrayList<SysFun>();
//		ulist.add(smain);
//		return ulist;
//	}
//	private void addChildren(SysFun sysFun,List<SysFun> flist) {
//		for(SysFun sf:flist){
//			Integer pid=sysFun.getFunId();
//			Integer sid=sf.getSys_funId();
//			if(pid==null){
//				if(sid==null){
//					this.addChildren(sf, flist);
//					sysFun.getChildren().add(sf);
//				}
//			}else{
//			if(pid.equals(sid)){
//				this.addChildren(sf, flist);
//				sysFun.getChildren().add(sf);
//			}
//			}
//		}
//	}
//	@RequestMapping("funSysTree")
//	@ResponseBody
//	public List<SysFun> funSysTree(HttpSession session){
//		SysUser user=(SysUser) session.getAttribute("user");
//		ulist= sysDao.findFunAll(user);
//		SysFun smain=new SysFun();
//		smain.setText("系统管理");
//		smain.setFunId(15002);
//		this.addChildren(smain,ulist);
//		ulist=new ArrayList<SysFun>();
//		ulist.add(smain);
//		return ulist;
//	}
//	@RequestMapping("funItemTree")
//	@ResponseBody
//	public List<SysFun> funItemTree(HttpSession session){
//		SysUser user=(SysUser) session.getAttribute("user");
//		ulist= sysDao.findFunAll(user);
//		SysFun smain=new SysFun();
//		smain.setText("题库管理");
//		smain.setFunId(15001);
//		this.addChildren(smain,ulist);
//		ulist=new ArrayList<SysFun>();
//		ulist.add(smain);
//		return ulist;
//	}
//@RequestMapping("funPaperTree")
//	@ResponseBody
//	public List<SysFun> funPaperTree(HttpSession session){
//		SysUser user=(SysUser) session.getAttribute("user");
//		ulist= sysDao.findFunAll(user);
//		SysFun smain=new SysFun();
//		smain.setText("试卷管理");
//		smain.setFunId(15003);
//		this.addChildren(smain,ulist);
//		ulist=new ArrayList<SysFun>();
//		ulist.add(smain);
//		return ulist;
//	}
//	@RequestMapping("funTestTree")
//	@ResponseBody
//	public List<SysFun> funTestTree(HttpSession session){
//		SysUser user=(SysUser) session.getAttribute("user");
//		ulist= sysDao.findFunAll(user);
//		SysFun smain=new SysFun();
//		smain.setText("考试管理");
//		smain.setFunId(15004);
//		this.addChildren(smain,ulist);
//		ulist=new ArrayList<SysFun>();
//		ulist.add(smain);
//		return ulist;
//	}
//	@RequestMapping("addfunSave")
//	@ResponseBody
//	public OperationMessage addFun(HttpSession session,SysFun sf) {
//		OperationMessage msg=new OperationMessage();
//		try{
//		int roleId=sf.getRoleId();
//		sysDao.addFun(sf);
//		int funId=sysDao.findFunId();
//		sysDao.addRoleFun(roleId,funId);
//		msg.sendMsg(1, "添加成功");
//		}catch(Exception ex){
//			msg.sendMsg(0, "添加失败");
//		}
//		return msg;
//	}
//	@RequestMapping("editfunSave")
//	@ResponseBody
//	public OperationMessage updatFun(SysFun sf) {
//		OperationMessage msg=new OperationMessage();
//		try{
//		sysDao.updateFun(sf);
//		msg.sendMsg(1, "修改成功");
//		}catch(Exception ex){
//			msg.sendMsg(0, "修改失败");
//		}
//		return msg;
//	}
//	@RequestMapping("delfunSave")
//	@ResponseBody
//	public OperationMessage delFun(Integer id) {
//		OperationMessage msg=new OperationMessage();
//		System.out.println("--------------22222222----------");
//		System.out.println(id);
//		SysFun sf=sysDao.findFun(id);
//		System.out.println(sf.getChildren().size());
//		if(sf.getChildren().size()==0){
//		sysDao.delRoleFun(sf);
//		sysDao.delFun(sf);
//		msg.sendMsg(1, "删除成功");
//		}else{
//			msg.sendMsg(0, "不能删除"+sf.getText());
//		}
//		return msg;
//	}
//}
