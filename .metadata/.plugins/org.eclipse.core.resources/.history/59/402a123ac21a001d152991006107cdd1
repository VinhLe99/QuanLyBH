package com.project.quanlybanhang_api.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quanlybanhang_api.entity.Staff;
import com.project.quanlybanhang_api.respository.StaffRepository;

@Service
public class StaffService implements StaffServiceImp {
	
	@Autowired
	StaffRepository staffRepository;

	//De day co sai toi thi xoa comment
//	@Override
//	public List<Map<String, ?>> getStaffByRole() {
//		return staffRepository.GetAllStaff();
// //GetAllStaff nay la lay RoleName tai call store  
// //o data nen lay ten theo vay
//	}

	@Override
	public Staff findStaffByEmail(String email) {
		return staffRepository.findStaffByEmail(email);
	}

	@Override
	public List<Staff> getAllStaff() {
		// TODO Auto-generated method stub
		return staffRepository.findAll();
	}

	@Override
	public void insertStaff(Staff staff) {
		// TODO Auto-generated method stub
		staffRepository.save(staff);
	}

	@Override
	public void deleteStaff(int Id) {
		// TODO Auto-generated method stub
		staffRepository.deleteById(Id);
		
	}

	@Override
	public Staff findStaffById(int Id) {
		// TODO Auto-generated method stub
		return staffRepository.findStaffById(Id);
	}

	@Override
	public Staff updateStaff(Staff staff) {
		return staffRepository.save(staff);
	}
}