/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.Improvement;
import com.examngfinal.bean.job.Complain;
import com.examngfinal.bean.job.JobExam;
import com.examngfinal.bean.job.JobLearn;
import com.examngfinal.bean.job.JobLeave;

/**
 * ����ָ��Dao
 * v1.0 shiyt
 */
public interface ImprovementDao {
	   public void addEmChangeAdvance(Improvement improvement);//�����ϵ�Ľ����
	   public List<JobExam> findAblitityDepartA();//��������̬�ȶ�Ա������A
	   public List<JobExam> findAblitityDepartB();//��������̬�ȶ�Ա������B
	   public List<JobExam> findAblitityDepartC();//��������̬�ȶ�Ա������C
	   public List<JobExam> findAblitityDepartD();//��������̬�ȶ�Ա������D
}
