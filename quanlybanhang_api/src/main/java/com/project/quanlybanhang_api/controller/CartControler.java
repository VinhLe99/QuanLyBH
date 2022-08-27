package com.project.quanlybanhang_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.quanlybanhang_api.entity.Cart;
import com.project.quanlybanhang_api.service.CartServiceImp;
import com.project.quanlybanhang_api.service.CustomerServiceImp;

@Controller
@RequestMapping("/cart")
public class CartControler {

	@Autowired
	CartServiceImp cartServiceImp;
	CustomerServiceImp customerServiceImp;
	
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/list")
	public ResponseEntity<?> getAllCustomer(){
		 List<Cart> list = cartServiceImp.findAll();
		  return new ResponseEntity<List<Cart>>(list,HttpStatus.OK);
		
	}
	// insert customer
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PostMapping("/insert")
	public ResponseEntity<?> insertCustomer(@RequestBody Cart cart){
		cartServiceImp.insertCart(cart);
		return new ResponseEntity<String>("Insert Success", HttpStatus.OK);		
	}
}
