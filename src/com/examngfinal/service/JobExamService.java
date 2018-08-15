/**
 * 
 * @version 1.0
 * @createTime 2016-4-28
 * @auth Administrator
 */
package com.examngfinal.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.examngfinal.bean.job.Complain;
import com.examngfinal.bean.job.JobExam;
import com.examngfinal.bean.sys.SysUser;
import com.examngfinal.dao.JobExamDao;


/**
 * 
 */
@Service
public class JobExamService {
	@Autowired
	private JobExamDao jobExamDao;
	//添加员工考评
	   public void addEmpExam(JobExam jobExam){
		   Integer emid = jobExam.getEmId();
//		   JobExam sta = jobExamDao.findEmid(emid);
//		   if(sta != null){			   
//			   System.out.println("已经评价过了！");
//			   return;
//		   }
		   
		   //Double performance =(double) (jobExam.getWorkload()+jobExam.getQuality()+jobExam.getTimeuse()); 
		   Double ability = (double) (jobExam.getCommunicate()+jobExam.getDecision()+jobExam.getInnovate()+jobExam.getExecute()); 
		   Double attitude =(double) (jobExam.getResponsibility()+jobExam.getDiscipline()+jobExam.getCooperation()); 
		   //Double ect =(double) (jobExam.getLog()+jobExam.getLearn()+jobExam.getAttendance()); 
		   Double abilitydepart = (ability+attitude)*0.9;
		   Double total = abilitydepart;
		   Integer exnum = jobExamDao.getemnum(emid);
		   jobExam.setAbilitydepart(abilitydepart);//能力态度值
		   jobExam.setTotal(total);//总分
		   jobExam.setExnum(exnum);//评价人数
		   jobExamDao.addEmpExam(jobExam);
//		   Integer exid = jobExam.getExId();//
//		   jobExam.getAbilityVo().setExId(exid);
//		   jobExam.getAbilityVo().setExnum(exnum);
//		   jobExam.getAbilityVo().setAbilitydepart(abilitydepart);
//		   jobExam.getAbilityVo().setTotal(total);
//		   jobExamDao.SetAbilitydepart(jobExam.getAbilityVo());
		  
	   }
	 //添加标准考评
	   public void addManExam(JobExam jobExam){
		   Integer emid = jobExam.getEmId();
//		   JobExam sta = jobExamDao.findEmid(emid);
//		   if(sta != null){			   
//			   System.out.println("已经评价过了！");
//			   return;
//		   }
		   
		   Double performance =(double) (jobExam.getWorkload()+jobExam.getQuality()+jobExam.getTimeuse()); 
		   Double ability = (double) (jobExam.getCommunicate()+jobExam.getDecision()+jobExam.getInnovate()+jobExam.getExecute()); 
		   Double attitude =(double) (jobExam.getResponsibility()+jobExam.getDiscipline()+jobExam.getCooperation()); 
		   Double ect =(double) (jobExam.getLog()+jobExam.getLearn()+jobExam.getAttendance()); 
		   Double abilitydepart = (ability+attitude);
		   Double total = (performance+ability+attitude+ect);
		   Integer exnum = jobExamDao.getemnum(emid);
		   jobExam.setAbilitydepart(abilitydepart);//能力态度值
		   jobExam.setTotal(total);//总分
		   jobExam.setExnum(exnum);//评价人数
		   jobExamDao.addEmpExam(jobExam);
		   
	   }
	 //添加员工申诉
	   public void addComplain(Complain complain){
		   
		   jobExamDao.addComplain(complain);
	   }
	 //显示所有考评记录
	   public List<JobExam> findAllExam(){
		   List<JobExam> mllist=jobExamDao.findAllExam();
		   
		   return mllist;
	   }
	   
}
