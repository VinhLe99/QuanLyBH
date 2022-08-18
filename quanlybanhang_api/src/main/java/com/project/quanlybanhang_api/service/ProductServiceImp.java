package com.project.quanlybanhang_api.service;

import java.util.List;

import com.project.quanlybanhang_api.entity.Product;

public interface ProductServiceImp {

	public List<Product> findAll();
	public void insertProduct(Product product);
	public void deleteProduct(int id);
	public Product findById(int id);
	public void updateProduct(Product product);
	
}
