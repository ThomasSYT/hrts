package com.examngfinal.bean;

import java.sql.Timestamp;

/**
 * Improvement entity. @author MyEclipse Persistence Tools
 */

public class Improvement{

	// Fields

	private Integer improvementId;
	private String stage1;
	private String time1;
	private String stage2;
	private String time2;
	private String stage3;
	private String time3;

	

	public Integer getImprovementId() {
		return this.improvementId;
	}

	public void setImprovementId(Integer improvementId) {
		this.improvementId = improvementId;
	}

	public String getStage1() {
		return this.stage1;
	}

	public void setStage1(String stage1) {
		this.stage1 = stage1;
	}

	

	public String getStage2() {
		return this.stage2;
	}

	public void setStage2(String stage2) {
		this.stage2 = stage2;
	}

	

	public String getStage3() {
		return this.stage3;
	}

	public void setStage3(String stage3) {
		this.stage3 = stage3;
	}

	public String getTime1() {
		return time1;
	}

	public void setTime1(String time1) {
		this.time1 = time1;
	}

	public String getTime2() {
		return time2;
	}

	public void setTime2(String time2) {
		this.time2 = time2;
	}

	public String getTime3() {
		return time3;
	}

	public void setTime3(String time3) {
		this.time3 = time3;
	}

	

}