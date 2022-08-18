package com.project.quanlybanhang_api.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class StaffRolesId implements Serializable {
	
	@Column(name = "role_id")
	private int roleId;
	
	@Column(name = "staff_id")
	private int staffId;
	
	public StaffRolesId(int roleId, int staffId) {
		this.roleId = roleId;
		this.staffId = staffId;
	}	
	public StaffRolesId() {
		
	}
}
