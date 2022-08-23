package com.project.quanlybanhang_api.respository;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.quanlybanhang_api.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{

	public Product findById(int id);
	
	@Query(value = "call GetProductByPhone()", nativeQuery = true)
	List<Map<String, ?>> getProductByPhone();
}
