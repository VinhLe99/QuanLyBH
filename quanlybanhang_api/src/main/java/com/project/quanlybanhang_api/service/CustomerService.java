package com.project.quanlybanhang_api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quanlybanhang_api.entity.Customer;
import com.project.quanlybanhang_api.respository.CustomerRepository;

@Service
public class CustomerService implements CustomerServiceImp  {

	@Autowired
	CustomerRepository customerRepository;
	
	@Override
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		return customerRepository.findAll();
	}
	@Override
	public void insertCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerRepository.save(customer);
	}
	@Override
	public Customer findCustomerById(int Id) {
		// TODO Auto-generated method stub
		return customerRepository.findCustomerById(Id);
	}
	@Override
	public Customer updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return customerRepository.save(customer);
	}
	@Override
	public void deleteCustomer(int Id) {
		customerRepository.deleteById(Id);;;
	}

}
