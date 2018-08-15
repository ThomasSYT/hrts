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
 * 工作指标Dao
 * v1.0 shiyt
 */
public interface PayControllerDao {
	   public void addPay(TbPay tbPay);//添加薪资
	   public void changePay(TbPay tbPay);//修改薪资
	   public TbPay findPay(int payid);//查询薪资情况
	   public List<TbPay> findPayAll();//查询薪资情况
	   public List<JobExam> findTotalDepartingA();//根据薪资能力对员工分类A
	   public List<JobExam> findTotalDepartingB();//根据薪资能力对员工分类B
	   public List<JobExam> findTotalDepartingC();//根据薪资能力对员工分类C
	   public List<JobExam> findTotalDepartingD();//根据薪资能力对员工分类D
}
