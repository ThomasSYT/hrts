package com.examngfinal.bean.sys;

import java.util.ArrayList;
import java.util.List;

public class SysFun {

	private Integer funId;
	private Integer sys_funId;
	private String text;
	private String attributes;
	private List<SysFun> children=new ArrayList<SysFun>();
	/**
	 * @return the funId
	 */
	public Integer getFunId() {
		return funId;
	}
	/**
	 * @param funId the funId to set
	 */
	public void setFunId(Integer funId) {
		this.funId = funId;
	}
	/**
	 * @return the sys_funId
	 */
	public Integer getSys_funId() {
		return sys_funId;
	}
	/**
	 * @param sys_funId the sys_funId to set
	 */
	public void setSys_funId(Integer sys_funId) {
		this.sys_funId = sys_funId;
	}
	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}
	/**
	 * @param text the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}
	/**
	 * @return the attributes
	 */
	public String getAttributes() {
		return attributes;
	}
	/**
	 * @param attributes the attributes to set
	 */
	public void setAttributes(String attributes) {
		this.attributes = attributes;
	}
	/**
	 * @return the children
	 */
	public List<SysFun> getChildren() {
		return children;
	}
	/**
	 * @param children the children to set
	 */
	public void setChildren(List<SysFun> children) {
		this.children = children;
	}
	
	

}
