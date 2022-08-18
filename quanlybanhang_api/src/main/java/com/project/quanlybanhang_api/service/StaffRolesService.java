package com.project.quanlybanhang_api.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quanlybanhang_api.entity.StaffRoles;
import com.project.quanlybanhang_api.respository.StaffRolesResponsitory;

@Service
public class StaffRolesService implements StaffRolesServiceImp {

	@Autowired
	StaffRolesResponsitory staffRolesResponsitory;
	
	@Override
	public List<Map<String, ?>> getRoleByStaffEmail(String email) {
		return staffRolesResponsitory.getRoleNameByStaff(email);
	}

	@Override
	public List<StaffRoles> getRoleByStaffId(int staffId) {
		return staffRolesResponsitory.findByStaffId(staffId);
	}	
}
