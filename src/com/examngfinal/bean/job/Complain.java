package com.examngfinal.bean.job;

import java.sql.Timestamp;

/**
 * Complain entity. @author MyEclipse Persistence Tools
 */

public class Complain{

	// Fields

	private Integer complainId;
	private Integer emId;
	private String coName;
	private String coText;
	private String cotime;
	

	public Integer getComplainId() {
		return this.complainId;
	}

	public void setComplainId(Integer complainId) {
		this.complainId = complainId;
	}

	

	public Integer getEmId() {
		return emId;
	}

	public void setEmId(Integer emId) {
		this.emId = emId;
	}

	public String getCoName() {
		return this.coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public String getCoText() {
		return this.coText;
	}

	public void setCoText(String coText) {
		this.coText = coText;
	}

	public String getCotime() {
		return cotime;
	}

	public void setCotime(String cotime) {
		this.cotime = cotime;
	}

	

}