/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.job.JobTask;

/**
 * 工作指标Dao
 * v1.0 shiyt
 */
public interface JobTaskDao {
	   public void addEmployeeTask(JobTask jobTask);//添加员工任务指标
	   public void addManagerTask(JobTask jobTask);//添加项目经理任务指标
	   public void delTask(int taskid);//删除任务指标
	   public void editEmployeeTask(JobTask jobTask);//编辑员工任务指标
	   public void editManagerTask(JobTask jobTask);//编辑项目经理任务指标
	   public List<JobTask> findManagerTask();//查所有项目经理以及任务指标
	   public List<JobTask> findEmployeeTask();//查所有员工以及任务指标
	   public List<JobTask> findMyTask(int taskid);//查自己任务指标
	   public JobTask findTask(int taskid);//查任务指标信息
}
