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

}
