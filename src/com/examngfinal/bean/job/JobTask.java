package com.examngfinal.bean.job;

import java.util.HashSet;
import java.util.Set;

/**
 * JobTask entity. @author MyEclipse Persistence Tools
 */

public class JobTask{

	// Fields

	private Integer taskId;
	private Integer roleId;
	private Integer emId;
	private String taEmname;
	private String basetarget;
	private String basetext;
	private String challengetarget;
	private String challengetext;
	private String begintime;
	private String deadline;
	private Set jobLearns = new HashSet(0);
	private Set jobLogs = new HashSet(0);
	private Set jobExams = new HashSet(0);

	

	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public Integer getEmId() {
		return emId;
	}

	public void setEmId(Integer emId) {
		this.emId = emId;
	}
	
	/**
	 * @return the taEmname
	 */
	public String getTaEmname() {
		return taEmname;
	}

	/**
	 * @param taEmname the taEmname to set
	 */
	public void setTaEmname(String taEmname) {
		this.taEmname = taEmname;
	}

	public String getBasetarget() {
		return this.basetarget;
	}

	public void setBasetarget(String basetarget) {
		this.basetarget = basetarget;
	}

	public String getBasetext() {
		return this.basetext;
	}

	public void setBasetext(String basetext) {
		this.basetext = basetext;
	}

	public String getChallengetarget() {
		return this.challengetarget;
	}

	public void setChallengetarget(String challengetarget) {
		this.challengetarget = challengetarget;
	}

	public String getChallengetext() {
		return this.challengetext;
	}

	public void setChallengetext(String challengetext) {
		this.challengetext = challengetext;
	}

	public String getBegintime() {
		return begintime;
	}

	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	

	
	public Set getJobLearns() {
		return this.jobLearns;
	}

	public void setJobLearns(Set jobLearns) {
		this.jobLearns = jobLearns;
	}

	public Set getJobLogs() {
		return this.jobLogs;
	}

	public void setJobLogs(Set jobLogs) {
		this.jobLogs = jobLogs;
	}

	public Set getJobExams() {
		return this.jobExams;
	}

	public void setJobExams(Set jobExams) {
		this.jobExams = jobExams;
	}

}