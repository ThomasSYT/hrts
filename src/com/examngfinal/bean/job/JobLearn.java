package com.examngfinal.bean.job;

import java.sql.Timestamp;

/**
 * JobLearn entity. @author MyEclipse Persistence Tools
 */

public class JobLearn{

	// Fields

	private Integer leId;
	private Integer taskId;
	private Integer emId;
	private String leaemname;
	private String learntext;
	private String learnadderss;
	private String begintime;
	private String endtime;
	

	public Integer getLeId() {
		return this.leId;
	}

	public void setLeId(Integer leId) {
		this.leId = leId;
	}

	

	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	public Integer getEmId() {
		return emId;
	}

	public void setEmId(Integer emId) {
		this.emId = emId;
	}

	/**
	 * @return the leaemname
	 */
	public String getLeaemname() {
		return leaemname;
	}

	/**
	 * @param leaemname the leaemname to set
	 */
	public void setLeaemname(String leaemname) {
		this.leaemname = leaemname;
	}

	public String getLearntext() {
		return this.learntext;
	}

	public void setLearntext(String learntext) {
		this.learntext = learntext;
	}

	public String getLearnadderss() {
		return this.learnadderss;
	}

	public void setLearnadderss(String learnadderss) {
		this.learnadderss = learnadderss;
	}

	public String getBegintime() {
		return begintime;
	}

	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	
	

}