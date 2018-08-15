package com.examngfinal.bean.job;

import java.sql.Timestamp;

/**
 * JobLog entity. @author MyEclipse Persistence Tools
 */

public class JobLog{

	// Fields

	private Integer logId;
	private Integer roleId;
	private Integer taskId;
	private Integer emId;
	private String tlBasetarget;
	private String tlEmname;
	private String logname;
	private String logtext;
	private String date;

	
	
	
	/**
	 * @return the tlBasetarget
	 */
	public String getTlBasetarget() {
		return tlBasetarget;
	}

	/**
	 * @param tlBasetarget the tlBasetarget to set
	 */
	public void setTlBasetarget(String tlBasetarget) {
		this.tlBasetarget = tlBasetarget;
	}

	/**
	 * @return the tlEmname
	 */
	public String getTlEmname() {
		return tlEmname;
	}

	/**
	 * @param tlEmname the tlEmname to set
	 */
	public void setTlEmname(String tlEmname) {
		this.tlEmname = tlEmname;
	}

	public Integer getLogId() {
		return logId;
	}

	public void setLogId(Integer logId) {
		this.logId = logId;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
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

	public String getLogname() {
		return this.logname;
	}

	public void setLogname(String logname) {
		this.logname = logname;
	}

	public String getLogtext() {
		return this.logtext;
	}

	public void setLogtext(String logtext) {
		this.logtext = logtext;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	

}