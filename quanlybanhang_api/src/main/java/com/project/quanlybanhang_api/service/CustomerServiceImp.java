package com.project.quanlybanhang_api.service;

import java.util.List;

import com.project.quanlybanhang_api.entity.Customer;
import com.project.quanlybanhang_api.entity.Staff;

public interface CustomerServiceImp {
	
	public List<Customer> findAll();
	public void insertCustomer(Customer customer);
	public void deleteCustomer(int Id);
	public Customer findCustomerById(int Id);
	public Customer updateCustomer(Customer customer);

}
