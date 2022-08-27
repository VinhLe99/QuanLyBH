package com.project.quanlybanhang_api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quanlybanhang_api.entity.Cart;
import com.project.quanlybanhang_api.respository.CartRepository;

@Service
public class CartService implements CartServiceImp{

	@Autowired
	CartRepository cartRepository;
	@Override
	public List<Cart> findAll() {
		return cartRepository.findAll();
	}

	@Override
	public void insertCart(Cart cart) {
		cartRepository.save(cart);
	}

}
