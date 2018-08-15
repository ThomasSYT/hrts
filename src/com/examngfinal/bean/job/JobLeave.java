package com.examngfinal.bean.job;

import java.sql.Timestamp;

/**
 * JobLeave entity. @author MyEclipse Persistence Tools
 */

public class JobLeave{

	// Fields

	private Integer leaveId;
	private Integer emId;
	private String leemname;
	private String reasaon;
	private String begintime;
	private String endtime;
	private Integer lestate;

	
	public Integer getLeaveId() {
		return this.leaveId;
	}

	public void setLeaveId(Integer leaveId) {
		this.leaveId = leaveId;
	}

	

	public Integer getEmId() {
		return emId;
	}

	public void setEmId(Integer emId) {
		this.emId = emId;
	}

	/**
	 * @return the leemname
	 */
	public String getLeemname() {
		return leemname;
	}

	/**
	 * @param leemname the leemname to set
	 */
	public void setLeemname(String leemname) {
		this.leemname = leemname;
	}

	public String getReasaon() {
		return this.reasaon;
	}

	public void setReasaon(String reasaon) {
		this.reasaon = reasaon;
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

	/**
	 * @return the lestate
	 */
	public Integer getLestate() {
		return lestate;
	}

	/**
	 * @param lestate the lestate to set
	 */
	public void setLestate(Integer lestate) {
		this.lestate = lestate;
	}

	

}