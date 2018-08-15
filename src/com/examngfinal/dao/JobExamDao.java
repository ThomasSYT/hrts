/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.job.Complain;
import com.examngfinal.bean.job.JobExam;
import com.examngfinal.bean.vo.AbilityVo;

/**
 * ����ָ��Dao
 * v1.0 shiyt
 */
public interface JobExamDao {
	   public void addEmpExam(JobExam jobExam);//���Ա������
	   public void addComplain(Complain complain);//���Ա������
	   public JobExam findEmid(Integer emId);//��ȡID�����жϴ�Ա���Ƿ�һ���й�����
	   public void addManExam(JobExam jobExam);//��ӱ�׼����(����������Ա��������ͬ)
	   public List<JobExam> findAllExam();//��ʾ���п�����¼
	   
	   
	   public Integer getemnum(Integer emId);//��ѯ����������
	   public Integer gettotalnum();//��ѯ��������
	   
	   public Double getWorkload(Integer emId);//��ѯ��������ƽ��ֵ
	   public Double getQuality(Integer emId);//��ѯ����������ƽ��ֵ
	   public Double getTimeuse(Integer emId);//��ѯ����ʱ�޵�ƽ��ֵ
	   public Double getCommunicate(Integer emId);//��ѯ��ͨ������ƽ��ֵ
	   public Double getDecision(Integer emId);//��ѯ����������ƽ��ֵ
	   public Double getInnovate(Integer emId);//��ѯ����������ƽ��ֵ
	   public Double getExecute(Integer emId);//��ѯִ��������ƽ��ֵ
	   public Double getResponsibility(Integer emId);//��ѯ�����ĵ�ƽ��ֵ
	   public Double getDiscipline(Integer emId);//��ѯ�����Ե�ƽ��ֵ
	   public Double getCooperation(Integer emId);//��ѯ���������ƽ��ֵ
	   public Double getLog(Integer emId);//��ѯ��־������ƽ��ֵ
	   public Double getLearn(Integer emId);//��ѯѧϰ�÷ֵ�ƽ��ֵ
	   public Double getAttendance(Integer emId);//��ѯ���ڵ÷ֵ�ƽ��ֵ
	   
	   public void SetAbilitydepart(AbilityVo abilityVo);//��������̬��ֵ���ܷ�
	   //public void SetTotal(AbilityVo abilityVo);//�����ܷ�
}
