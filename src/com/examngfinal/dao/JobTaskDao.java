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
 * ����ָ��Dao
 * v1.0 shiyt
 */
public interface JobTaskDao {
	   public void addEmployeeTask(JobTask jobTask);//���Ա������ָ��
	   public void addManagerTask(JobTask jobTask);//�����Ŀ��������ָ��
	   public void delTask(int taskid);//ɾ������ָ��
	   public void editEmployeeTask(JobTask jobTask);//�༭Ա������ָ��
	   public void editManagerTask(JobTask jobTask);//�༭��Ŀ��������ָ��
	   public List<JobTask> findManagerTask();//��������Ŀ�����Լ�����ָ��
	   public List<JobTask> findEmployeeTask();//������Ա���Լ�����ָ��
	   public List<JobTask> findMyTask(int taskid);//���Լ�����ָ��
	   public JobTask findTask(int taskid);//������ָ����Ϣ
}
