package com.project.quanlybanhang_api.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.quanlybanhang_api.entity.Staff;
import com.project.quanlybanhang_api.service.StaffServiceImp;

@RestController
@RequestMapping("/staff")
public class StaffController {
	
	@Autowired
	StaffServiceImp serviceImp;
	//De day co sai toi thi xoa comment
//	//list Staff by role
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
//	@GetMapping("/lists")
//	public ResponseEntity<?> getStaffByRole() {
//		  List<Map<String, ?>> list = serviceImp.getStaffByRole();
//		  return new ResponseEntity<List<Map<String, ?>>>(list,HttpStatus.OK);
//	}
	
	// Get List
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/list")
	public ResponseEntity<?> getAllStaff() {
	     List<Staff> list = serviceImp.getAllStaff();
		 return new ResponseEntity<List<Staff>>(list,HttpStatus.OK);
	}
	
	//insert Staff
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PostMapping("/insert")
	public ResponseEntity<?> insertStaff(@RequestParam("StaffName")String staffName, 
			@RequestParam("Email") String email, @RequestParam("Password") String password, 
			@RequestParam("PhoneNumber") int phoneNumber, @RequestParam("Address") String address,
			@RequestParam("Gender") String Gender ,@RequestParam("BirthDay") Date birthDate){			
			Staff staff = new Staff();
			staff.setStaffName(staffName);
			staff.setEmail(email);
			staff.setPassword(password);
			staff.setPhoneNumber(phoneNumber);
			staff.setStaffAddress(address);
			staff.setGender(Gender);
			staff.setBirthOfDay(birthDate);
			
			serviceImp.insertStaff(staff);
			
		return new ResponseEntity<String>("Insert Success", HttpStatus.OK);		
	}
	
	//delete Staff
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@DeleteMapping("/delete/{id}")
	public ResponseEntity<?> deleteStaff(@PathVariable("id") int Id){
		serviceImp.deleteStaff(Id);
		return new ResponseEntity<String>("Delete Success", HttpStatus.OK);		
	}
	
	// Update Product
		@PreAuthorize("hasRole('ROLE_ADMIN')")
		@PutMapping("/update/{id}")
		public ResponseEntity<Staff> updateStaffById(@PathVariable("id") int Id,
				@RequestBody Staff staff){
			Staff getStaff = serviceImp.findStaffById(Id);
			getStaff.setStaffName(staff.getStaffName());
			getStaff.setEmail(staff.getEmail());
			getStaff.setPassword(staff.getPassword());
			getStaff.setPhoneNumber(staff.getPhoneNumber());
			getStaff.setStaffAddress(staff.getStaffAddress());
			getStaff.setGender(staff.getGender());
			getStaff.setBirthOfDay(staff.getBirthOfDay());
			
			Staff updateStaff = serviceImp.updateStaff(getStaff);
			
			return new ResponseEntity<Staff>(updateStaff, HttpStatus.OK);
		}
}
