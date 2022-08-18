package com.project.quanlybanhang_api.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity( name = "roles")
public class Roles {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column( name = "role_name")
	private String roleName;

	@OneToMany(mappedBy = "roles")
	private Set<StaffRoles> staffRoles;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Set<StaffRoles> getStaffRoles() {
		return staffRoles;
	}

	public void setStaffRoles(Set<StaffRoles> staffRoles) {
		this.staffRoles = staffRoles;
	}

	
}
