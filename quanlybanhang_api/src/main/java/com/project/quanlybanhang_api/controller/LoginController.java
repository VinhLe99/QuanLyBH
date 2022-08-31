package com.project.quanlybanhang_api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.quanlybanhang_api.entity.Staff;
import com.project.quanlybanhang_api.helper.JwtProvider;
import com.project.quanlybanhang_api.service.StaffServiceImp;

@RestController
@RequestMapping("/login")
public class LoginController {	
	@Autowired
	StaffServiceImp staffServiceImp;
	
	@Autowired
	AuthenticationManager manager;
	
	@Autowired
	JwtProvider jwtProvider;
		
	@PostMapping("/security")
	public ResponseEntity<String> login(@RequestBody Staff staff){
		Authentication authentication = manager.authenticate(
				new UsernamePasswordAuthenticationToken(staff.getEmail(), staff.getPassword()));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		String jwtToken = jwtProvider.generateToken(staff.getEmail());		
		return new ResponseEntity<String>(jwtToken, HttpStatus.OK);
	}
}
