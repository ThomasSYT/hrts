/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.job.JobLog;

/**
 * 工作指标Dao
 * v1.0 shiyt
 */
public interface JobLogDao {
	   public void addLog(JobLog jobLog);//添加个人日志
	   
	   public void delLog(int logId);//删除日志
	   public void editLog(JobLog jobLog);//编辑个人日志
	   public List<JobLog> findMyLog(int userid);//查自己任务日志
	   public List<JobLog> findManagerLog();//查所有项目经理任务指标以及日志
	   public List<JobLog> findEmployeeLog();//查所有员工任务指标以及日志
	   public JobLog findLog(int jobLog);//查看日志信息
}
