package com.project.quanlybanhang_api.service;

import java.util.List;
import java.util.Map;

import com.project.quanlybanhang_api.entity.Product;

public interface ProductServiceImp {

	public List<Product> findAll();
	public List<Map<String, ?>> getProductByPhone();
	public List<Map<String, ?>> getProductByTablet();
	public List<Map<String, ?>> getProductByLaptop();
	public List<Map<String, ?>> getProductByOther();
	public void insertProduct(Product product);
	public void deleteProduct(int id);
	public Product findById(int id);
	public void updateProduct(Product product);
	
}
