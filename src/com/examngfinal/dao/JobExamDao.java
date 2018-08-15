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
 * 工作指标Dao
 * v1.0 shiyt
 */
public interface JobExamDao {
	   public void addEmpExam(JobExam jobExam);//添加员工考评
	   public void addComplain(Complain complain);//添加员工申诉
	   public JobExam findEmid(Integer emId);//获取ID用于判断此员工是否一进行过评价
	   public void addManExam(JobExam jobExam);//添加标准考评(暂留功能与员工考评相同)
	   public List<JobExam> findAllExam();//显示所有考评记录
	   
	   
	   public Integer getemnum(Integer emId);//查询此人评价数
	   public Integer gettotalnum();//查询总评价数
	   
	   public Double getWorkload(Integer emId);//查询工作量的平均值
	   public Double getQuality(Integer emId);//查询工作质量的平均值
	   public Double getTimeuse(Integer emId);//查询工作时限的平均值
	   public Double getCommunicate(Integer emId);//查询沟通能力的平均值
	   public Double getDecision(Integer emId);//查询决策能力的平均值
	   public Double getInnovate(Integer emId);//查询创新能力的平均值
	   public Double getExecute(Integer emId);//查询执行能力的平均值
	   public Double getResponsibility(Integer emId);//查询责任心的平均值
	   public Double getDiscipline(Integer emId);//查询纪律性的平均值
	   public Double getCooperation(Integer emId);//查询合作精神的平均值
	   public Double getLog(Integer emId);//查询日志分数的平均值
	   public Double getLearn(Integer emId);//查询学习得分的平均值
	   public Double getAttendance(Integer emId);//查询出勤得分的平均值
	   
	   public void SetAbilitydepart(AbilityVo abilityVo);//插入能力态度值和总分
	   //public void SetTotal(AbilityVo abilityVo);//插入总分
}
