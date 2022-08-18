package com.project.quanlybanhang_api.service;

import java.util.List;
import java.util.Map;

import com.project.quanlybanhang_api.entity.StaffRoles;


public interface StaffRolesServiceImp {
	public List<Map<String, ?>> getRoleByStaffEmail(String email);
	public List<StaffRoles> getRoleByStaffId(int staffId);
}
