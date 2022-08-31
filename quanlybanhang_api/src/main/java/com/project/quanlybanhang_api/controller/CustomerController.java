package com.project.quanlybanhang_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.quanlybanhang_api.entity.Customer;
import com.project.quanlybanhang_api.entity.Staff;
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
	// Update
			@PreAuthorize("hasRole('ROLE_ADMIN')")
			@PutMapping("/update/{id}")
			public ResponseEntity<Customer> updateCustomerById(@PathVariable("id") int Id,
					@RequestBody Customer customer){
				Customer getcustomer = customerServiceImp.findCustomerById(Id);
				if(getcustomer.getCustomerName() != null) {
					getcustomer.setCustomerName(customer.getCustomerName());
				}
				if(getcustomer.getPhoneNumber() != null) {
					getcustomer.setPhoneNumber(customer.getPhoneNumber());;
				}
				if(getcustomer.getMail() != null) {
					getcustomer.setMail(customer.getMail());
				}
				if(getcustomer.getCustomerAddress() != null) {
					getcustomer.setCustomerAddress(customer.getCustomerAddress());
				}				
				if(getcustomer.getGender() != null) {
					getcustomer.setGender(customer.getGender());
				}
				customerServiceImp.updateCustomer(getcustomer);
				return new ResponseEntity<Customer>(customer, HttpStatus.OK);	
			}
}
