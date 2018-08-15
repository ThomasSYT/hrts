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
 * ����ָ��Dao
 * v1.0 shiyt
 */
public interface JobLogDao {
	   public void addLog(JobLog jobLog);//��Ӹ�����־
	   
	   public void delLog(int logId);//ɾ����־
	   public void editLog(JobLog jobLog);//�༭������־
	   public List<JobLog> findMyLog(int userid);//���Լ�������־
	   public List<JobLog> findManagerLog();//��������Ŀ��������ָ���Լ���־
	   public List<JobLog> findEmployeeLog();//������Ա������ָ���Լ���־
	   public JobLog findLog(int jobLog);//�鿴��־��Ϣ
}
