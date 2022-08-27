package com.project.quanlybanhang_api.service;

import java.util.List;

import com.project.quanlybanhang_api.entity.Cart;

public interface CartServiceImp {

	public List<Cart> findAll();
	public void insertCart(Cart cart);
}
