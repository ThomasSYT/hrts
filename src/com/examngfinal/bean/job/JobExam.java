package com.examngfinal.bean.job;

import java.sql.Timestamp;

import com.examngfinal.bean.vo.AbilityVo;

/**
 * JobExam entity. @author MyEclipse Persistence Tools
 */

public class JobExam{

	// Fields

	private Integer exId;
	private Integer taskId;
	private Integer emId;
	private String exPername;
	private String exDate;
	//private Integer exnum;
	private Integer workload;
	private Integer quality;
	private Integer timeuse;
	private String performancetext;
	private Integer communicate;
	private Integer decision;
	private Integer innovate;
	private Integer execute;
	private String abilitytext;
	private Integer responsibility;
	private Integer discipline;
	private Integer cooperation;
	private String attitudetext;
	private Integer log;
	private Integer learn;
	private Integer attendance;
	//private Double abilitydepart;
	//private Double total;
	private AbilityVo abilityVo;
	private String jbemname;
	private Double abilitydepart;
	private Double total;
	private Integer exnum;

	public Integer getExId() {
		return this.exId;
	}

	public void setExId(Integer exId) {
		this.exId = exId;
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

	public String getExPername() {
		return this.exPername;
	}

	public void setExPername(String exPername) {
		this.exPername = exPername;
	}

	

	

//	/**
//	 * @return the exnum
//	 */
//	public Integer getExnum() {
//		return exnum;
//	}
//
//	/**
//	 * @param exnum the exnum to set
//	 */
//	public void setExnum(Integer exnum) {
//		this.exnum = exnum;
//	}

	public String getExDate() {
		return exDate;
	}

	public void setExDate(String exDate) {
		this.exDate = exDate;
	}

	public Integer getWorkload() {
		return this.workload;
	}

	public void setWorkload(Integer workload) {
		this.workload = workload;
	}

	public Integer getQuality() {
		return this.quality;
	}

	public void setQuality(Integer quality) {
		this.quality = quality;
	}

	public Integer getTimeuse() {
		return this.timeuse;
	}

	public void setTimeuse(Integer timeuse) {
		this.timeuse = timeuse;
	}

	public String getPerformancetext() {
		return this.performancetext;
	}

	public void setPerformancetext(String performancetext) {
		this.performancetext = performancetext;
	}

	public Integer getCommunicate() {
		return this.communicate;
	}

	public void setCommunicate(Integer communicate) {
		this.communicate = communicate;
	}

	public Integer getDecision() {
		return this.decision;
	}

	public void setDecision(Integer decision) {
		this.decision = decision;
	}

	public Integer getInnovate() {
		return this.innovate;
	}

	public void setInnovate(Integer innovate) {
		this.innovate = innovate;
	}

	public Integer getExecute() {
		return this.execute;
	}

	public void setExecute(Integer execute) {
		this.execute = execute;
	}

	public String getAbilitytext() {
		return this.abilitytext;
	}

	public void setAbilitytext(String abilitytext) {
		this.abilitytext = abilitytext;
	}

	public Integer getResponsibility() {
		return this.responsibility;
	}

	public void setResponsibility(Integer responsibility) {
		this.responsibility = responsibility;
	}

	public Integer getDiscipline() {
		return this.discipline;
	}

	public void setDiscipline(Integer discipline) {
		this.discipline = discipline;
	}

	public Integer getCooperation() {
		return this.cooperation;
	}

	public void setCooperation(Integer cooperation) {
		this.cooperation = cooperation;
	}

	public String getAttitudetext() {
		return this.attitudetext;
	}

	public void setAttitudetext(String attitudetext) {
		this.attitudetext = attitudetext;
	}

	public Integer getLog() {
		return this.log;
	}

	public void setLog(Integer log) {
		this.log = log;
	}

	public Integer getLearn() {
		return this.learn;
	}

	public void setLearn(Integer learn) {
		this.learn = learn;
	}

	public Integer getAttendance() {
		return this.attendance;
	}

	public void setAttendance(Integer attendance) {
		this.attendance = attendance;
	}

//	/**
//	 * @return the abilitydepart
//	 */
//	public Integer getAbilitydepart() {
//		return abilitydepart;
//	}
//
//	/**
//	 * @param abilitydepart the abilitydepart to set
//	 */
//	public void setAbilitydepart(Integer abilitydepart) {
//		this.abilitydepart = abilitydepart;
//	}
//
//	/**
//	 * @return the total
//	 */
//	public Integer getTotal() {
//		return total;
//	}
//
//	/**
//	 * @param total the total to set
//	 */
//	public void setTotal(Integer total) {
//		this.total = total;
//	}

	/**
	 * @return the jbemname
	 */
	public String getJbemname() {
		return jbemname;
	}

	/**
	 * @return the abilityVo
	 */
	public AbilityVo getAbilityVo() {
		return abilityVo;
	}

	/**
	 * @param abilityVo the abilityVo to set
	 */
	public void setAbilityVo(AbilityVo abilityVo) {
		this.abilityVo = abilityVo;
	}

	/**
	 * @param jbemname the jbemname to set
	 */
	public void setJbemname(String jbemname) {
		this.jbemname = jbemname;
	}

	public Double getAbilitydepart() {
		return abilitydepart;
	}

	public void setAbilitydepart(Double abilitydepart) {
		this.abilitydepart = abilitydepart;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Integer getExnum() {
		return exnum;
	}

	public void setExnum(Integer exnum) {
		this.exnum = exnum;
	}
	

}