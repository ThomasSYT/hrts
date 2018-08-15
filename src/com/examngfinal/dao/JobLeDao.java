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
 * ����ָ��Dao
 * v1.0 shiyt
 */
public interface JobLeDao {
	   public void delLearn(int learnid);//ɾ����ѵ��¼
	   public void addLeave(JobLeave jobLeave);//����������
	   public void addLearn(JobLearn jobLearn);//�����ѵ��¼
	   public JobLeave changeState(JobLeave jobLeave);//���봦��
	   public List<JobLeave> findMyLeave(Integer emId);//��ʾ�ҵ�����
	   public List<JobLeave> findMyLearn(Integer emId);//��ʾ��ѵ��¼
	   public List<JobLeave> findAllLeave();//��ʾ��������
	   public JobLeave findLeave(int leaId);//��ʾ������Ϣ
	   public JobLearn findLearn(int learnId);//��ʾ��ѵ��Ϣ
}
