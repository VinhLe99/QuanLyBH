package com.project.quanlybanhang_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.quanlybanhang_api.entity.Cart;
import com.project.quanlybanhang_api.entity.CartId;
import com.project.quanlybanhang_api.entity.Customer;
import com.project.quanlybanhang_api.entity.Product;
import com.project.quanlybanhang_api.service.CartServiceImp;
import com.project.quanlybanhang_api.service.CustomerServiceImp;
import com.project.quanlybanhang_api.service.ProductServiceImp;

@Controller
@RequestMapping("/cart")
public class CartControler {

	@Autowired
	CartServiceImp cartServiceImp;
	@Autowired
	CustomerServiceImp customerServiceImp;
	@Autowired
	ProductServiceImp productServiceImp;
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/list")
	public ResponseEntity<?> getAllCustomer(){
		 List<Cart> list = cartServiceImp.findAll();
		  return new ResponseEntity<List<Cart>>(list,HttpStatus.OK);
		
	}
	// insert cart
	@PostMapping("/insert")
	public ResponseEntity<?> insertCart(@RequestParam("CustomerName")String customerName, 
			@RequestParam("PhoneNumber") String phoneNumber, @RequestParam("Mail") String mail, 
			@RequestParam("CustomerAddress") String customerAddress, @RequestParam("Gender") String gender,@RequestParam("list") List<Product> products){
			Customer customer = new Customer();
			customer.setCustomerName(customerName);
			customer.setPhoneNumber(phoneNumber);
			customer.setMail(mail);
			customer.setCustomerAddress(customerAddress);
			customer.setGender(gender);
			customerServiceImp.insertCustomer(customer);
			Cart cart = new Cart();
			for (Product product : products) {
				Product product_add = productServiceImp.findById(product.getId());
				Customer customer_add = customerServiceImp.findCustomerById(customer.getId());
				CartId cartId = new CartId();
				cartId.setCustomerId(customer_add.getId());
				cartId.setProductId(product_add.getId());
				cart.setId(cartId);
				cartServiceImp.insertCart(cart);
			}
		return new ResponseEntity<String>("Ok",HttpStatus.OK);	
	}	
//		
}
