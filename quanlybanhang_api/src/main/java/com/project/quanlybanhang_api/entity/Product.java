package com.project.quanlybanhang_api.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity( name = "product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@OneToMany(mappedBy = "product")
	private Set<Cart> carts;
	
	@Column( name = "product_name")
	private String product_name;
	
	@Column( name = "product_avatar")
	private String product_avatar;
	
	@Column( name = "product_price")
	private float product_price;
	
	@Column( name = "product_type")
	private int product_type;
	
	@Column( name = "product_description")
	private String product_description;
	
	@Column( name = "product_screen_type")
	private String product_screen_type;
	
	@Column( name = "product_screen_size")
	private String product_screen_size;
	
	@Column( name = "product_front_camere")
	private String product_front_camere;
	
	@Column( name = "product_back_camera")
	private String product_back_camera;
	
	@Column( name = "product_producer")
	private String product_producer;
	
	@Column(name = "product_status")
	private String product_status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_avatar() {
		return product_avatar;
	}

	public void setProduct_avatar(String product_avatar) {
		this.product_avatar = product_avatar;
	}

	public float getProduct_price() {
		return product_price;
	}

	public void setProduct_price(float product_price) {
		this.product_price = product_price;
	}

	public int getProduct_type() {
		return product_type;
	}

	public void setProduct_type(int produc_type) {
		this.product_type = produc_type;
	}

	public String getProduct_description() {
		return product_description;
	}

	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}

	public String getProduct_screen_type() {
		return product_screen_type;
	}

	public void setProduct_screen_type(String product_screenType) {
		this.product_screen_type = product_screenType;
	}

	public String getProduct_screen_size() {
		return product_screen_size;
	}

	public void setProduct_screen_size(String product_screen_size) {
		this.product_screen_size = product_screen_size;
	}

	public String getProduct_front_camere() {
		return product_front_camere;
	}

	public void setProduct_front_camere(String product_front_camere) {
		this.product_front_camere = product_front_camere;
	}

	public String getProduct_back_camera() {
		return product_back_camera;
	}

	public void setProduct_back_camera(String product_back_camera) {
		this.product_back_camera = product_back_camera;
	}

	public String getProduct_producer() {
		return product_producer;
	}

	public void setProduct_producer(String product_producer) {
		this.product_producer = product_producer;
	}

	public String getProduct_status() {
		return product_status;
	}

	public void setProduct_status(String product_status) {
		this.product_status = product_status;
	}	
}
