/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.TbPay;
import com.examngfinal.bean.job.JobExam;

/**
 * ����ָ��Dao
 * v1.0 shiyt
 */
public interface PayControllerDao {
	   public void addPay(TbPay tbPay);//���н��
	   public void changePay(TbPay tbPay);//�޸�н��
	   public TbPay findPay(int payid);//��ѯн�����
	   public List<TbPay> findPayAll();//��ѯн�����
	   public List<JobExam> findTotalDepartingA();//����н��������Ա������A
	   public List<JobExam> findTotalDepartingB();//����н��������Ա������B
	   public List<JobExam> findTotalDepartingC();//����н��������Ա������C
	   public List<JobExam> findTotalDepartingD();//����н��������Ա������D
}
