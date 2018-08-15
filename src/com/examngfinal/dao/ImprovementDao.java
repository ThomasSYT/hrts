/**
 * 
 * @version 1.0
 * @createTime 2016-5-3
 * @auth Administrator
 */
package com.examngfinal.dao;

import java.util.List;

import com.examngfinal.bean.Improvement;
import com.examngfinal.bean.job.Complain;
import com.examngfinal.bean.job.JobExam;
import com.examngfinal.bean.job.JobLearn;
import com.examngfinal.bean.job.JobLeave;

/**
 * 工作指标Dao
 * v1.0 shiyt
 */
public interface ImprovementDao {
	   public void addEmChangeAdvance(Improvement improvement);//添加体系改进意见
	   public List<JobExam> findAblitityDepartA();//根据能力态度对员工分类A
	   public List<JobExam> findAblitityDepartB();//根据能力态度对员工分类B
	   public List<JobExam> findAblitityDepartC();//根据能力态度对员工分类C
	   public List<JobExam> findAblitityDepartD();//根据能力态度对员工分类D
}
