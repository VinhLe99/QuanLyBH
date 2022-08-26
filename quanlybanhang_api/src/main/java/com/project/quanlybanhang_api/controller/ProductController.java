package com.project.quanlybanhang_api.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.quanlybanhang_api.entity.Product;
import com.project.quanlybanhang_api.service.ProductServiceImp;
import com.project.quanlybanhang_api.service.UpLoadFileService;

@RestController
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductServiceImp productServiceImp;
	
	@Autowired
	UpLoadFileService upLoadFileService;
	
	// List Product
	@GetMapping("/list")
	public ResponseEntity<?> getAllStaff() {
		  List<Product> list = productServiceImp.findAll();
		  return new ResponseEntity<List<Product>>(list,HttpStatus.OK);
	}
	
	// List Product by phone
	@GetMapping("/list/phone")
	public ResponseEntity<?> getProductByPhone() {
		List<Map<String, ?>> listProduct = productServiceImp.getProductByPhone();
		  return new ResponseEntity<List<Map<String, ?>>>(listProduct,HttpStatus.OK);
	}
	// List Product by phone
	@GetMapping("/list/tablet")
	public ResponseEntity<?> getProductByTablet() {
		List<Map<String, ?>> listProduct = productServiceImp.getProductByTablet();
			return new ResponseEntity<List<Map<String, ?>>>(listProduct,HttpStatus.OK);
	}
	// List Product by laptop
	@GetMapping("/list/laptop")
	public ResponseEntity<?> getProductByLaptop() {
		List<Map<String, ?>> listProduct = productServiceImp.getProductByLaptop();
			return new ResponseEntity<List<Map<String, ?>>>(listProduct,HttpStatus.OK);
	}
	// List Product by order
	@GetMapping("/list/other")
	public ResponseEntity<?> getProductByOrder() {
		List<Map<String, ?>> listProduct = productServiceImp.getProductByOther();
			return new ResponseEntity<List<Map<String, ?>>>(listProduct,HttpStatus.OK);
	}
	// Insert Product
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PostMapping("/insert")
	public ResponseEntity<?> insertProduct(@RequestParam("file") MultipartFile file,@RequestParam("ProductName") String ProductName,
			@RequestParam("ProductPrice") float ProductPrice,@RequestParam("ProductDescription") String ProductDescription,
			@RequestParam("ProductScreenType") String ProductScreenType,@RequestParam("ProductScreenSize") String ProductScreenSize,
			@RequestParam("ProductFrontCamere") String ProductFrontCamere,
			@RequestParam("ProductBackCamera") String ProductBackCamera,@RequestParam("ProductProducer") String ProductProducer,
			@RequestParam("ProductType") int ProductType,@RequestParam("ProductStatus") String ProductStatus){
		upLoadFileService.init();
		Product product = new Product();
		if(upLoadFileService.saveFile(file)) {			
			product.setProduct_name(ProductName);
			product.setProduct_avatar(file.getOriginalFilename());
			product.setProduct_price(ProductPrice);
			product.setProduct_description(ProductDescription);
			product.setProduct_screen_type(ProductScreenType);
			product.setProduct_screen_size(ProductScreenSize);
			product.setProduct_front_camere(ProductFrontCamere);
			product.setProduct_back_camera(ProductBackCamera);
			product.setProduct_producer(ProductProducer);
			product.setProduct_type(ProductType);
			product.setProduct_status(ProductStatus);
			productServiceImp.insertProduct(product);
		}		
		return new ResponseEntity<Product>(product, HttpStatus.OK);
	}
	// Delete Product
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@DeleteMapping("/delete/{id}")
	public ResponseEntity<?> deleteProduct(@PathVariable("id") int Id){
		productServiceImp.deleteProduct(Id);
		return new ResponseEntity<String>("delete complete", HttpStatus.OK);
	}
	// Update Product
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PutMapping("/update/{id}")
	public ResponseEntity<?> updateProduct(@RequestBody Product product,@PathVariable("id") int Id){
		Product updateProduct = productServiceImp.findById(Id);
		if(product.getProduct_name() != null) {
			updateProduct.setProduct_name(product.getProduct_name());
		}
		if(product.getProduct_avatar() != null) {
			updateProduct.setProduct_avatar(product.getProduct_avatar());
		}
		if(product.getProduct_price() != 0) {
			updateProduct.setProduct_price(product.getProduct_price());
		}
		if(product.getProduct_description() != null) {
			updateProduct.setProduct_description(product.getProduct_description());
		}
		if(product.getProduct_screen_type() != null) {
			updateProduct.setProduct_screen_type(product.getProduct_screen_type());
		}
		if(product.getProduct_screen_size() != null) {
			updateProduct.setProduct_screen_size(product.getProduct_screen_size());
		}
		if(product.getProduct_front_camere() != null) {
			updateProduct.setProduct_front_camere(product.getProduct_front_camere());
		}
		if(product.getProduct_back_camera() != null) {
			updateProduct.setProduct_back_camera(product.getProduct_back_camera());
		}
		if(product.getProduct_producer() != null) {
			updateProduct.setProduct_producer(product.getProduct_producer());
		}
		if(product.getProduct_type() != 0) {
			updateProduct.setProduct_type(product.getProduct_type());
		}
		if(product.getProduct_status() != null) {
			updateProduct.setProduct_status(product.getProduct_status());
		}
		productServiceImp.updateProduct(updateProduct);
		return new ResponseEntity<Product>(updateProduct, HttpStatus.OK);
	}
}
