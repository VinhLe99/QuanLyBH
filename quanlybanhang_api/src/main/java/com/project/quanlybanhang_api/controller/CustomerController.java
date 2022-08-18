package com.project.quanlybanhang_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.quanlybanhang_api.entity.Customer;
import com.project.quanlybanhang_api.service.CustomerServiceImp;

@Controller
@RequestMapping("/customer")
public class CustomerController  {
	@Autowired
	CustomerServiceImp customerServiceImp;
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/list")
	public ResponseEntity<?> getAllCustomer(){
		 List<Customer> list = customerServiceImp.findAll();
		  return new ResponseEntity<List<Customer>>(list,HttpStatus.OK);
		
	}
	

}
