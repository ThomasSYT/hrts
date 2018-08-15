
package com.examngfinal.bean.sys;

import java.util.HashSet;
import java.util.Set;

/**
 *部门实体类
 */
public class Department {
	// Fields

		private Integer dtId;
		private String dtCreatTime;
		private String dtName;
		private Set tbEmployees = new HashSet(0);

		

		public Integer getDtId() {
			return this.dtId;
		}

		public void setDtId(Integer dtId) {
			this.dtId = dtId;
		}

		

		public String getDtCreatTime() {
			return dtCreatTime;
		}

		public void setDtCreatTime(String dtCreatTime) {
			this.dtCreatTime = dtCreatTime;
		}

		public String getDtName() {
			return this.dtName;
		}

		public void setDtName(String dtName) {
			this.dtName = dtName;
		}

		public Set getTbEmployees() {
			return this.tbEmployees;
		}

		public void setTbEmployees(Set tbEmployees) {
			this.tbEmployees = tbEmployees;
		}

	}
