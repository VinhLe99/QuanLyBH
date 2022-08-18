package com.project.quanlybanhang_api.service;

import java.util.List;
import java.util.Map;

import com.project.quanlybanhang_api.entity.Staff;

public interface StaffServiceImp {
	
	public List<Staff> getAllStaff();//GetAllStaff nay la lay Staff
	//De day co sai toi thi xoa comment	
	//public List<Map<String, ?>> getStaffByRole();
	public Staff findStaffByEmail(String email);
	public void insertStaff(Staff staff);
	public void deleteStaff(int Id);
	public Staff findStaffById(int Id);
	public Staff updateStaff(Staff staff);
}
