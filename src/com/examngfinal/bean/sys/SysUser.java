package com.examngfinal.bean.sys;
/**
 * µÇÂ½ÐÅÏ¢Bean
 */

public class SysUser {
	private String userId;
	// liwei remove
	private Integer roleId;
	// liwei add
//	private SysRole role;
	// liwei remove
	private Integer emId;
	private String pwd;
	private String regDate;
	private Employee employee;
	// liwei add
//	public SysRole getRole() {
//		return role;
//	}
//	public void setRole(SysRole role) {
//		this.role = role;
//	}
	// liwei add end
	/**
	 * @return the employee
	 */
	public Employee getEmployee() {
		return employee;
	}
	/**
	 * @param employee the employee to set
	 */
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	// liwei remove
	
	/**
	 * @return the roleId
	 */
	public Integer getRoleId() {
		return roleId;
	}
	/**
	 * @param roleId the roleId to set
	 */
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
	/**
	 * @return the emId
	 */
	public Integer getEmId() {
		return emId;
	}
	/**
	 * @param emId the emId to set
	 */
	public void setEmId(Integer emId) {
		this.emId = emId;
	}
	/**
	 * @return the pwd
	 */
	public String getPwd() {
		return pwd;
	}
	/**
	 * @param pwd the pwd to set
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	/**
	 * @return the regDate
	 */
	public String getRegDate() {
		return regDate;
	}
	/**
	 * @param regDate the regDate to set
	 */
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
}
