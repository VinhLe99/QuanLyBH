package com.project.quanlybanhang_api.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name = "staff_role")
public class StaffRoles {

	@EmbeddedId
	private StaffRolesId id;

	@ManyToOne
	@JoinColumn(name = "staff_id", insertable = false, updatable = false)
	private Staff staff;

	@ManyToOne
	@JoinColumn(name = "role_id", insertable = false, updatable = false)
	private Roles roles;

	public StaffRolesId getId() {
		return id;
	}
	public void setId(StaffRolesId id) {

		this.id = id;
	}

	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public Roles getRoles() {
		return roles;
	}
	public void setRoles(Roles roles) {
		this.roles = roles;
	}
}
