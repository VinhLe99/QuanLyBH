package com.project.quanlybanhang_api.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class CartId implements Serializable{

	@Column(name = "product_id")
	private int productId;
	
	@Column(name = "customer_id")
	private int customerId;
	
	public CartId(int productId, int customerId) {
		this.productId = productId;
		this.customerId = customerId;
	}	
	public CartId() {
		
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
}
