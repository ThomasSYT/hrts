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
	
	//ɾ����ѵ��¼
	   public void delLearn(int learnid){
		   jobLeDao.delLearn(learnid);
	   }
	//����������
	   public void addLeave(JobLeave jobLeave){
		   jobLeDao.addLeave(jobLeave);
	   }
	 //�����ѵ��¼
	   public void addLearn(JobLearn jobLearn){
		   jobLeDao.addLearn(jobLearn);
	   }
	 //����ͬ��
	   public void changeStateY(JobLeave jobLeave){
			   jobLeave.setLestate(2);
		   jobLeDao.changeState(jobLeave);
	   }
	 //���벵��
	   public void changeStateN(JobLeave jobLeave){
			   jobLeave.setLestate(3);
		   jobLeDao.changeState(jobLeave);
	   }
	 //��ʾ�ҵ�����
	   public List<JobLeave> findMyLeave(Integer emId){
		   List<JobLeave> mrlist=jobLeDao.findMyLeave(emId);
		   
		   return mrlist;
	   }
	 //��ʾ��������
	   public List<JobLeave> findAllLeave(){
		   List<JobLeave> arlist=jobLeDao.findAllLeave();
		   
		   return arlist;
	   }
	 //��ʾ��ѵ��¼
	   public List<JobLeave> findMyLearn(Integer emId){
		   List<JobLeave> mllist=jobLeDao.findMyLearn(emId);
		   
		   return mllist;
	   }
	 //��ʾ������Ϣ
	   public JobLeave findLea(Integer leaId){
		   JobLeave lea=jobLeDao.findLeave(leaId);
		   
		   return lea;
	   }
	 //��ʾ��ѵ��Ϣ
	   public JobLearn findLearn(Integer learnId){
		   JobLearn learn=jobLeDao.findLearn(learnId);
		   
		   return learn;
	   }
	   
}
