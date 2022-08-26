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
	//list phone
	@Query(value = "call GetProductByPhone()", nativeQuery = true)
	List<Map<String, ?>> getProductByPhone();
	//list tablet
	@Query(value = "call GetProductByTablet()", nativeQuery = true)
	List<Map<String, ?>> getProductByTablet();
	//list laptop
	@Query(value = "call GetProductByLaptop()", nativeQuery = true)
	List<Map<String, ?>> getProductByLaptop();
	//list order
	@Query(value = "call GetProductByOther()", nativeQuery = true)
	List<Map<String, ?>> getProductByOther();
}
