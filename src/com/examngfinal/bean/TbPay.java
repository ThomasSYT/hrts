package com.examngfinal.bean;


/**
 * TbPay entity. @author MyEclipse Persistence Tools
 */

public class TbPay{

	// Fields

	private Integer payId;
	private Integer emId;
	private String payEmName;
	private String payMonth;
	private Float payBaseMoney;
	private Float payOvertime;
	private Float paySafety;
	private Float payAbsent;
	private Float payCheck;
	private Float payAge;

	

	public Integer getPayId() {
		return this.payId;
	}

	public void setPayId(Integer payId) {
		this.payId = payId;
	}

	

	public Integer getEmId() {
		return emId;
	}

	public void setEmId(Integer emId) {
		this.emId = emId;
	}

	public String getPayEmName() {
		return this.payEmName;
	}

	public void setPayEmName(String payEmName) {
		this.payEmName = payEmName;
	}

	

	public String getPayMonth() {
		return payMonth;
	}

	public void setPayMonth(String payMonth) {
		this.payMonth = payMonth;
	}

	public Float getPayBaseMoney() {
		return this.payBaseMoney;
	}

	public void setPayBaseMoney(Float payBaseMoney) {
		this.payBaseMoney = payBaseMoney;
	}

	public Float getPayOvertime() {
		return this.payOvertime;
	}

	public void setPayOvertime(Float payOvertime) {
		this.payOvertime = payOvertime;
	}

	public Float getPaySafety() {
		return this.paySafety;
	}

	public void setPaySafety(Float paySafety) {
		this.paySafety = paySafety;
	}

	public Float getPayAbsent() {
		return this.payAbsent;
	}

	public void setPayAbsent(Float payAbsent) {
		this.payAbsent = payAbsent;
	}

	public Float getPayCheck() {
		return this.payCheck;
	}

	public void setPayCheck(Float payCheck) {
		this.payCheck = payCheck;
	}

	public Float getPayAge() {
		return this.payAge;
	}

	public void setPayAge(Float payAge) {
		this.payAge = payAge;
	}

}