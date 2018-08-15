/**
 * 
 * @version 1.0
 * @createTime 2016-4-28
 * @auth Administrator
 */
package com.examngfinal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.examngfinal.bean.job.JobLearn;
import com.examngfinal.bean.job.JobLeave;
import com.examngfinal.dao.JobLeDao;


/**
 * 
 */
@Service
public class JobLeService {
	@Autowired
	private JobLeDao jobLeDao;
	
	//删除培训记录
	   public void delLearn(int learnid){
		   jobLeDao.delLearn(learnid);
	   }
	//添加请假申请
	   public void addLeave(JobLeave jobLeave){
		   jobLeDao.addLeave(jobLeave);
	   }
	 //添加培训记录
	   public void addLearn(JobLearn jobLearn){
		   jobLeDao.addLearn(jobLearn);
	   }
	 //申请同意
	   public void changeStateY(JobLeave jobLeave){
			   jobLeave.setLestate(2);
		   jobLeDao.changeState(jobLeave);
	   }
	 //申请驳回
	   public void changeStateN(JobLeave jobLeave){
			   jobLeave.setLestate(3);
		   jobLeDao.changeState(jobLeave);
	   }
	 //显示我的请求
	   public List<JobLeave> findMyLeave(Integer emId){
		   List<JobLeave> mrlist=jobLeDao.findMyLeave(emId);
		   
		   return mrlist;
	   }
	 //显示所有请求
	   public List<JobLeave> findAllLeave(){
		   List<JobLeave> arlist=jobLeDao.findAllLeave();
		   
		   return arlist;
	   }
	 //显示培训记录
	   public List<JobLeave> findMyLearn(Integer emId){
		   List<JobLeave> mllist=jobLeDao.findMyLearn(emId);
		   
		   return mllist;
	   }
	 //显示请求信息
	   public JobLeave findLea(Integer leaId){
		   JobLeave lea=jobLeDao.findLeave(leaId);
		   
		   return lea;
	   }
	 //显示培训信息
	   public JobLearn findLearn(Integer learnId){
		   JobLearn learn=jobLeDao.findLearn(learnId);
		   
		   return learn;
	   }
	   
}
