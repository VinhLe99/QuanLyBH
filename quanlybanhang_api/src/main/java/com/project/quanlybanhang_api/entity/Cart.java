package com.project.quanlybanhang_api.entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name = "cart")
public class Cart {

	@EmbeddedId
	private CartId id;

	@ManyToOne()
	@JoinColumn(name = "product_id", insertable = false, updatable = false)
	private Product product;

	@ManyToOne()
	@JoinColumn(name = "custonmer_id", insertable = false, updatable = false)
	private Customer customer;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "total_money")
	private float totalMoney;

	public CartId getId() {
		return id;
	}

	public void setId(CartId id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

}
