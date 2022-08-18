package com.project.quanlybanhang_api.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity(name = "cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne()
	@JoinColumn(name = "product_id", insertable = false, updatable = false)
	private Product product;

	@ManyToOne()
	@JoinColumn(name = "custonmer_id", insertable = false, updatable = false)
	private Customer customer;

	@ManyToOne()
	@JoinColumn(name = "staff_id")
	private Staff staff;

	@OneToOne(mappedBy = "cart")
	private CartDetail cartDetail;

}
