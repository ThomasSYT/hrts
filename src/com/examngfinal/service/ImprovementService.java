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

import com.examngfinal.bean.Improvement;
import com.examngfinal.bean.job.Complain;
import com.examngfinal.bean.job.JobExam;
import com.examngfinal.bean.job.JobLearn;
import com.examngfinal.bean.job.JobLeave;
import com.examngfinal.dao.ImprovementDao;
import com.examngfinal.dao.JobExamDao;
import com.examngfinal.dao.JobLeDao;


/**
 * 
 */
@Service
public class ImprovementService {
	@Autowired
	private ImprovementDao improvementDao;
	//添加体系改进意见
	   public void addEmChangeAdvance(Improvement improvement){
		   
		   improvementDao.addEmChangeAdvance(improvement);
	   }
	 
	 
	 //根据能力态度对员工分类A
	   public List<JobExam> findAblitityDepartA(){
		   List<JobExam> aalist=improvementDao.findAblitityDepartA();
		   
		   return aalist;
	   }
	 //根据能力态度对员工分类B
	   public List<JobExam> findAblitityDepartB(){
		   List<JobExam> ablist=improvementDao.findAblitityDepartB();
		   
		   return ablist;
	   }
	 //根据能力态度对员工分类C
	   public List<JobExam> findAblitityDepartC(){
		   List<JobExam> aclist=improvementDao.findAblitityDepartC();
		   
		   return aclist;
	   }
	 //根据能力态度对员工分类D
	   public List<JobExam> findAblitityDepartD(){
		   List<JobExam> adlist=improvementDao.findAblitityDepartD();
		   
		   return adlist;
	   }
	   
}
