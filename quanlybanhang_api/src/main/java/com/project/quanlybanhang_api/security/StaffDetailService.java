package com.project.quanlybanhang_api.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.quanlybanhang_api.entity.Staff;
import com.project.quanlybanhang_api.entity.StaffRoles;
import com.project.quanlybanhang_api.service.StaffRolesServiceImp;
import com.project.quanlybanhang_api.service.StaffServiceImp;

@Service
public class StaffDetailService implements UserDetailsService {
	
	@Autowired
	StaffServiceImp staffServiceImp;
	
	@Autowired
	StaffRolesServiceImp rolesServiceImp;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		List<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
		Staff staff = staffServiceImp.findStaffByEmail(email);	
		List<StaffRoles> listRole = rolesServiceImp.getRoleByStaffId(staff.getId());		
		for (StaffRoles staffRoles : listRole) {
			SimpleGrantedAuthority roleAdmin = new SimpleGrantedAuthority(staffRoles.getRoles().getRoleName());
			roles.add(roleAdmin);
		}		
		User user = new User(staff.getEmail(),staff.getPassword(),roles);
		return user;	
	}

}
