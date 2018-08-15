/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.job.JobLearn;
import com.examngfinal.bean.job.JobLeave;

/**
 * 工作指标Dao
 * v1.0 shiyt
 */
public interface JobLeDao {
	   public void delLearn(int learnid);//删除培训记录
	   public void addLeave(JobLeave jobLeave);//添加请假申请
	   public void addLearn(JobLearn jobLearn);//添加培训记录
	   public JobLeave changeState(JobLeave jobLeave);//申请处理
	   public List<JobLeave> findMyLeave(Integer emId);//显示我的请求
	   public List<JobLeave> findMyLearn(Integer emId);//显示培训记录
	   public List<JobLeave> findAllLeave();//显示所有请求
	   public JobLeave findLeave(int leaId);//显示请求信息
	   public JobLearn findLearn(int learnId);//显示培训信息
}
